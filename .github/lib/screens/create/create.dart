import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/shared/styled_text_field.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  //handling vocation selection
  Vocation selectedVocation = Vocation.jedi;

  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  //submit handler
  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const StyledHeading("Missing Character Name"),
              content: const StyledText("Type in a name to continue."),
              actions: [
                StyledButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    child: const StyledHeading("close")),
              ],
              actionsAlignment: MainAxisAlignment.center,
            );
          });
      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const StyledHeading("Missing Character Slogan"),
              content: const StyledText("Type in a slogan to continue."),
              actions: [
                StyledButton(
                    onPressed: () {
                      Navigator.pop(ctx);
                    },
                    child: const StyledHeading("close")),
              ],
              actionsAlignment: MainAxisAlignment.center,
            );
          });
      return;
    }

    characters.add(Character(
      vocation: selectedVocation,
      name: _nameController.text.trim(),
      slogan: _sloganController.text.trim(),
      id: uuid.v4(),
    ));

    Navigator.push(context, MaterialPageRoute(builder: (ctx) => const Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle("Character Creation"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //welcome message
              Center(
                child: Icon(
                  Icons.code,
                  color: AppColors.primaryColor,
                ),
              ),
              const Center(
                child: StyledHeading("New Character..."),
              ),
              const Center(
                child:
                    StyledText("Create a name and slogan for your character."),
              ),
              const SizedBox(
                height: 30,
              ),
              StyledTextField(
                controller: _nameController,
                prefixIcon: const Icon(Icons.person_2_outlined),
                label: "Character Name",
              ),

              const SizedBox(
                height: 20,
              ),
              StyledTextField(
                controller: _sloganController,
                prefixIcon: const Icon(Icons.message_outlined),
                label: "Character Slogam",
              ),
              const SizedBox(
                height: 10,
              ),
              //select vocation title
              Center(
                child: Icon(
                  Icons.code,
                  color: AppColors.primaryColor,
                ),
              ),
              const Center(
                child: StyledHeading("Choose a class"),
              ),
              const Center(
                child: StyledText("This determines available skills."),
              ),
              const SizedBox(
                height: 10,
              ),

              //vocation cards
              VocationCard(
                  selected: selectedVocation == Vocation.jedi,
                  onTap: updateVocation,
                  vocation: Vocation.jedi),
              VocationCard(
                  selected: selectedVocation == Vocation.inquisitor,
                  onTap: updateVocation,
                  vocation: Vocation.inquisitor),
              VocationCard(
                  selected: selectedVocation == Vocation.smuggler,
                  onTap: updateVocation,
                  vocation: Vocation.smuggler),
              VocationCard(
                  selected: selectedVocation == Vocation.hunter,
                  onTap: updateVocation,
                  vocation: Vocation.hunter),
              VocationCard(
                  selected: selectedVocation == Vocation.agent,
                  onTap: updateVocation,
                  vocation: Vocation.agent),
              VocationCard(
                  selected: selectedVocation == Vocation.trooper,
                  onTap: updateVocation,
                  vocation: Vocation.trooper),
              VocationCard(
                  selected: selectedVocation == Vocation.rebel,
                  onTap: updateVocation,
                  vocation: Vocation.rebel),
              VocationCard(
                  selected: selectedVocation == Vocation.droid,
                  onTap: updateVocation,
                  vocation: Vocation.droid),

              //good luck message
              Center(
                child: Icon(
                  Icons.code,
                  color: AppColors.primaryColor,
                ),
              ),
              const Center(
                child: StyledHeading("Confirm Creation"),
              ),
              const Center(
                child: StyledText("Have fun!"),
              ),
              const SizedBox(
                height: 10,
              ),

              Center(
                child: StyledButton(
                  onPressed: handleSubmit,
                  child: const StyledHeading("Create Character"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
