import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

class BottomCommentFieldWidget extends StatefulWidget {
  const BottomCommentFieldWidget({super.key});

  @override
  State<BottomCommentFieldWidget> createState() =>
      _BottomCommentFieldWidgetState();
}

class _BottomCommentFieldWidgetState extends State<BottomCommentFieldWidget> {
  late TextEditingController _textEditingController;
  late FocusNode _focusNode;
  bool isShowSendButton = false;
  bool isShowEmojiPicker = false;
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _focusNode = FocusNode();
  }

  // show keyboard
  void showKeyBoard() {
    _focusNode.requestFocus();
  }

  // hide keyboard
  void hideKeyNoard() {
    _focusNode.unfocus();
  }

  // hide emoji container
  void hideEmojiContainer() {
    setState(() {
      isShowEmojiPicker = false;
    });
  }

  // show emoji container
  void showEmojiContainer() {
    setState(() {
      isShowEmojiPicker = true;
    });
  }

  // toggle emoji and keyboard container
  void toggleEmojiKeyboardContainer() {
    if (isShowEmojiPicker) {
      showKeyBoard();
      hideEmojiContainer();
    } else {
      hideKeyNoard();
      showEmojiContainer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  // emoji button
                  IconButton(
                    onPressed: toggleEmojiKeyboardContainer,
                    icon: Icon(isShowEmojiPicker
                        ? Icons.keyboard_alt
                        : Icons.emoji_emotions_outlined),
                  ),

                  Expanded(
                    child: TextFormField(
                      controller: _textEditingController,
                      focusNode: _focusNode,
                      decoration: const InputDecoration.collapsed(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Type a message',
                      ),
                      onChanged: (value) {
                        // setState(() {
                        //   isShowSendButton = value.isNotEmpty;
                        // });
                      },
                      onTap: () {
                        hideEmojiContainer();
                      },
                    ),
                  ),

                  GestureDetector(
                    onTap: () {},

                    // onLongPressUp: stopRecording,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.deepPurple,
                      ),
                      margin: const EdgeInsets.all(5),
                      child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_upward,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        isShowEmojiPicker
            ? SizedBox(
                height: 280,
                // width: MediaQuery.of(context).size.width * 0.6,
                child: EmojiPicker(
                  onEmojiSelected: (category, Emoji emoji) {
                    _textEditingController.text =
                        _textEditingController.text + emoji.emoji;

                    if (!isShowSendButton) {
                      setState(() {
                        isShowSendButton = true;
                      });
                    }
                  },
                  onBackspacePressed: () {
                    _textEditingController.text = _textEditingController
                        .text.characters
                        .skipLast(1)
                        .toString();
                  },
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
