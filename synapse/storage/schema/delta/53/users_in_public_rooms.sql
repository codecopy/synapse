/* Copyright 2019 New Vector Ltd
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

-- We don't need the old version of this table.
DROP TABLE IF EXISTS users_in_public_rooms;

-- Old version of users_in_public_rooms
DROP TABLE IF EXISTS users_who_share_public_rooms;

-- Track what users are in public rooms.
CREATE TABLE IF NOT EXISTS users_in_public_rooms (
    user_id TEXT NOT NULL,
    room_id TEXT NOT NULL
);

CREATE UNIQUE INDEX users_in_public_rooms_u_idx ON users_in_public_rooms(user_id, room_id);

-- Track what users are publicly visible
CREATE TABLE IF NOT EXISTS publicly_visible_users (
    user_id TEXT NOT NULL
);

CREATE UNIQUE INDEX publicly_visible_users_u_idx ON publicly_visible_users(user_id);
