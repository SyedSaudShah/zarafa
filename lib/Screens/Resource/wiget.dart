import '../../Export/export.dart';

Widget myInputBox(BuildContext context, TextEditingController controller) {
  return Container(
    height: MediaQuery.of(context).size.width * 0.15,
    width: MediaQuery.of(context).size.width * 0.15,
    decoration: BoxDecoration(
      border: Border.all(width: 1),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: TextFormField(
      autofocus: true,
      controller: controller,
      maxLength: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 24),
      decoration: const InputDecoration(
        border: InputBorder.none,
        counterText: '',
      ),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  );
}
