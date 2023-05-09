import 'package:flutter/material.dart';

class RateBuddies extends StatefulWidget {
  @override
  State<RateBuddies> createState() => _RateBuddies();
}

class Buddy {
  final String name;
  int rating;

  Buddy(this.name, this.rating);
}

class _RateBuddies extends State<RateBuddies> {
  final List<Buddy> _buddies = [
    Buddy('John', 0),
    Buddy('Mary', 0),
    Buddy('Tom', 0),
    Buddy('Sarah', 0),
    Buddy('Sarah', 0),
    Buddy('Sarah', 0),
    Buddy('Sarah', 0),
    Buddy('Sarah', 0),
    Buddy('Sarah', 0),
    Buddy('Sarah', 0),
    Buddy('Sarah', 0),
    Buddy('Sarah', 0),
    Buddy('Sarah', 0),
    Buddy('Sarah', 0),
  ];
  final List<int> _stars = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rate Buddies'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _buddies.length,
        itemBuilder: (context, index) {
          final buddy = _buddies[index];
          return Card(
            child: ListTile(
              title: Text(buddy.name),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: _stars.map((star) {
                  return IconButton(
                    onPressed: () {
                      setState(() {
                        buddy.rating = star;
                      });
                    },
                    icon: Icon(
                      star <= buddy.rating ? Icons.star : Icons.star_border,
                    ),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final List<int> ratings =
              _buddies.map((buddy) => buddy.rating).toList();
          print('Buddies ratings: $ratings');
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
