import 'package:flutter/material.dart';

class ShortPage extends StatelessWidget {
  const ShortPage({
    super.key,
    required this.accountName,
    required this.subscriber,
    required this.price,
    required this.description,
    required this.likeCount,
    required this.commentCount,
    required this.imageProfile,
    required this.imagePost,
  });

  final String accountName;
  final String subscriber;
  final String price;
  final String description;
  final String likeCount;
  final String commentCount;
  final String imageProfile;
  final String imagePost;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            color: Colors.black,
          ),
          SizedBox(
            width: width,
            height: height,
            child: Image.network(
              imagePost,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            bottom: 20,
            left: width * 0.05,
            width: width * 0.9,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: width * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(imageProfile),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            width: width * 0.39,
                            child: Text(
                              accountName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    blurRadius: 50.0,
                                    color: Colors.black,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'Subsribe',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Sub : $subscriber',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 50.0,
                                  color: Colors.black,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Rp. $price',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 50.0,
                                  color: Colors.black,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                SizedBox(
                    width: width * 0.15,
                    child: Column(
                      children: [
                        _buildIconButton(
                            Icons.thumb_up_alt_outlined, likeCount),
                        const SizedBox(height: 8),
                        _buildIconButton(
                            Icons.thumb_down_alt_outlined, "Dislike"),
                        const SizedBox(height: 8),
                        _buildIconButton(Icons.comment, commentCount),
                        const SizedBox(height: 8),
                        _buildIconButton(Icons.share, "Share"),
                        const SizedBox(height: 8),
                        _buildIconButton(Icons.repeat_sharp, "Remix"),
                        const SizedBox(height: 8),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(imageProfile),
                        ),
                        const SizedBox(height: 8),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _buildIconButton(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}