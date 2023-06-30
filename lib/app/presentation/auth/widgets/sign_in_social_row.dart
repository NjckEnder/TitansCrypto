part of widgets;

class SignInRowButton extends StatelessWidget {
  const SignInRowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: SignInSocialButton(
          title: 'Facebook',
          iconWidget: const AppIcons.facebook(),
          onPressed: () {},
        )),
        const AppPadding.small(),
        Expanded(
          child: SignInSocialButton(
            title: 'Google',
            iconWidget: const AppIcons.google(),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
