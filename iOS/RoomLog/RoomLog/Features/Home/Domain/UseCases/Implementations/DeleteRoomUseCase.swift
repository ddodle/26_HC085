//
//  DeleteRoomUseCase.swift
//  RoomLog
//
//  Created by 김도연 on 5/9/26.
//

import Foundation

final class DeleteRoomUseCase: DeleteRoomUseCaseProtocol {
    private let repository: RoomRepositoryProtocol

    init(repository: RoomRepositoryProtocol) {
        self.repository = repository
    }

    func execute(roomId: Int) async throws {
        try await repository.deleteRoom(roomId: roomId)
    }
}
