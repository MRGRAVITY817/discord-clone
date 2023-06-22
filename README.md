# Discord Clone, written with Elixir

To start your Phoenix server:

- Run `mix setup` to install and setup dependencies
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Features

### Briefly...

- Create server
- Create channels in server
- Show presence of Friends / Members
- Add Friends
- Chat with people
  - Each message should be updated in realtime

### Group (server)

- [ ] User can create server
- [ ] User can invite other people into group
  - [ ] Using invitation link
- [ ] User can have server-specific profile
- [ ] User can leave the server
  - [ ] When the maintainer leaves the server, he/she should put other person as server maintainer.

### Channels

- [ ] Server can have channels - maintainer(s) can do that.
- [ ] Not every channels are public - some of the channels are only for certain members.
- [ ] Member presence can be seen in right pane
- [ ] Channels can have threads - a small place where members can talk with more specific topic.
- [ ] Channels can be separated by categories.

### Chat Messages

- [ ] Avatar link
- [ ] User name
- [ ] Display the date and time when it was created/updated
- [ ] Reactions on the bottom
- [ ] Highlight other users or special group (everyone, here, etc)
  - [ ] When the user is tagged, the message should have background color of yellow.
- [ ] Should embed Markdown
- [ ] On hover ...
  - [ ] Darken the background color
  - [ ] Show the context menu that contains ..
    - [ ] Add reaction
    - [ ] Reply
    - [ ] Create thread
    - [ ] More ...

### Message input

- [ ] Can add simple text
- [ ] Can also add
  - [ ] Files (has size limits)
  - [ ] Images (preview is compressed)
  - [ ] Thread (only in channels)
