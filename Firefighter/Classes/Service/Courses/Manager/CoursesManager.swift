//
//  CoursesManager.swift
//  Nursing
//
//  Created by Andrey Chernyshev on 17.01.2021.
//

import RxSwift

protocol CoursesManager: AnyObject {
    // MARK: API
    func select(course: Course)
    func getSelectedCourse() -> Course?
    
    // MARK: API(Rx)
    func retrieveCourses() -> Single<[Course]>
    func rxSelect(course: Course) -> Single<Void>
    func rxGetSelectedCourse() -> Single<Course?>
    
    // MARK: References
    func retrieveReferences(forceUpdate: Bool) -> Single<[Reference]>
}
