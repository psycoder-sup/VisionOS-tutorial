//
//  ViewModel.swift
//  Inspiration4App
//
//  Created by 박상욱 on 11/16/23.
//

import Foundation

/// Observable은 매크로로 값이 없데이트 될 때마다 View에 즉각적으로 반영을 해주는 역할을 한다.
///
@Observable
class ViewModel {
    var nevigationPath: [Area] = []
    var isShowingRocketCapsule: Bool = false
    var isShowingFullRocket: Bool = false
}
