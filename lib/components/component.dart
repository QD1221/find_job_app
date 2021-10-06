import 'package:find_job_app/model/job.dart';
import 'package:flutter/material.dart';

class Component extends StatelessWidget {
  Job job;
  Component({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 8),
              child: Image.network(
                '${job.img}',
                height: 52,
                width: 52,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets
                    .symmetric(
                    horizontal: 16),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment
                      .start,
                  children: [
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,
                      children: [
                        Text(
                          '${job.title}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight:
                            FontWeight
                                .bold,
                          ),
                        ),
                        IconButton(
                          iconSize: 16,
                          onPressed: () {},
                          icon: Icon(
                              job.isFavorite ??
                                  false
                                  ? Icons
                                  .favorite
                                  : Icons
                                  .favorite_border),
                          color:
                          job.isFavorite ??
                              false
                              ? Colors
                              .green
                              : Colors
                              .grey,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 14,
                        ),
                        Text(
                          '${job.location}',
                          style: TextStyle(
                              fontSize: 13),
                        ),
                        Spacer(),
                        Text(
                          '${job.uploadDate}',
                          style: TextStyle(
                              fontSize: 11,
                              color: Colors
                                  .grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Container(
                          decoration:
                          BoxDecoration(
                            color:
                            Colors.indigo,
                            borderRadius:
                            BorderRadius
                                .circular(
                                24),
                          ),
                          padding:
                          EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          child: Text(
                            job.timeType ??
                                'Unknown',
                            style: TextStyle(
                                color: Colors
                                    .white, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 8,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
