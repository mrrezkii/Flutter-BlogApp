import 'package:equatable/equatable.dart';

abstract class PostEvent extends Equatable{
  const PostEvent();

  @override
  List<Object?> get props => [];
}

class FetchPost extends PostEvent{}