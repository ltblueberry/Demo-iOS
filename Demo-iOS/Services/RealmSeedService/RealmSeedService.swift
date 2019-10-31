//
//  RealmSeedService.swift
//  Demo-iOS
//
//  Created by ltblueberry on 10/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import RealmSwift

/// Realm Seed Service that fill db with items from seeds file
final class RealmSeedService {

    private var realm: Realm {
        do {
            return try Realm()
        } catch let error as NSError {
            fatalError(error.localizedDescription)
        }
    }

    /// Fill local database with seed items from file
    public func fillDatabase() {

        guard let csvUrl = R.file.seedsCsv() else {
            NSLog("No seeds.csv file found...")
            return
        }

        do {
            let file = try String(contentsOf: csvUrl)
            let rows = file.components(separatedBy: .newlines)
            for row in rows {
                let fields = row.replacingOccurrences(of: "\"", with: "").replacingOccurrences(of: "\\n", with: "\n").components(separatedBy: ",")

                if fields.count != 3 { continue }

                var values: [String: Any] = [:]
                values["id"] = Int(fields[0]) ?? 0
                values["title"] = fields[1]
                values["body"] = fields[2]

                do {
                    try realm.write {
                        realm.add(ExampleEntity(value: values))
                    }
                } catch {
                    NSLog("Error when adding seed \(row)")
                }
            }

            UserDefaults.standard.set(true, forKey: UserDefaultsKeys.dbSeedsAdded.rawValue)
        } catch {
            NSLog("Couldn't read seeds.csv file...")
        }
    }

}
