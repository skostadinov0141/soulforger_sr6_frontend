import 'package:flutter/material.dart';
import 'package:frontend_flutter/global_properties/colors.dart' as colors;
import 'package:frontend_flutter/global_properties/font_styles.dart' as fonts;
import 'package:frontend_flutter/pages/landing_page/widgets/nav_bar.dart' as nav_bar;

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary[2],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 1114,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth,
                    image: Image.asset('assets/images/landing_page_backgound.jpg').image
                  )
                ),
              )
            ),
            nav_bar.NavigationBar(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 320,vertical: 80),
                child: Container(
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: colors.primary[3]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Impressum",
                        style: fonts.h1(color: colors.secondary[2]),
                      ),
                      const SizedBox(height: 16,),
                      SelectableText(
                        "Simeon Kostadinov\nAm Königsberg 4\n29525 Uelzen \nDeutschland",
                        style: fonts.bodyBold()
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "E-Mail:",
                                style: fonts.bodyBold(),
                              ),
                              Text(
                                "Telefon:",
                                style: fonts.bodyBold(),
                              ),
                            ],
                          ),
                          const SizedBox(width: 16,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                "soulforger.net@gmail.com",
                                style: fonts.body(),
                              ),
                              SelectableText(
                                "+49 176 63213726",
                                style: fonts.body(),
                              ),
                            ],
                          ),
                          const SizedBox(width: 16,),
                        ],
                      ),
                      const SizedBox(height: 16,),
                      SelectableText(
                        "Haftungsausschluss – Disclaimer:",
                        style: fonts.h3()
                      ),
                      const SizedBox(height: 8,),
                      SelectableText(
                        "Haftung für Inhalte",
                        style: fonts.bodyBold()
                      ),
                      SelectableText(
                        "Alle Inhalte unseres Internetauftritts wurden mit größter Sorgfalt und nach bestem Gewissen erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt. \n\nEine diesbezügliche Haftung ist jedoch erst ab dem Zeitpunkt der Kenntniserlangung einer konkreten Rechtsverletzung möglich. Bei Bekanntwerden von den o.g. Rechtsverletzungen werden wir diese Inhalte unverzüglich entfernen.",
                        style: fonts.body(color: colors.secondary[4])
                      ),
                      const SizedBox(height: 16,),
                      SelectableText(
                        "Haftungsbeschränkung für externe Links",
                        style: fonts.bodyBold()
                      ),
                      SelectableText(
                        "Unsere Webseite enthält Links auf externe Webseiten Dritter. Auf die Inhalte dieser direkt oder indirekt verlinkten Webseiten haben wir keinen Einfluss. Daher können wir für die „externen Links“ auch keine Gewähr auf Richtigkeit der Inhalte übernehmen. Für die Inhalte der externen Links sind die jeweilige Anbieter oder Betreiber (Urheber) der Seiten verantwortlich.\n\nDie externen Links wurden zum Zeitpunkt der Linksetzung auf eventuelle Rechtsverstöße überprüft und waren im Zeitpunkt der Linksetzung frei von rechtswidrigen Inhalten. Eine ständige inhaltliche Überprüfung der externen Links ist ohne konkrete Anhaltspunkte einer Rechtsverletzung nicht möglich. Bei direkten oder indirekten Verlinkungen auf die Webseiten Dritter, die außerhalb unseres Verantwortungsbereichs liegen, würde eine Haftungsverpflichtung ausschließlich in dem Fall nur bestehen, wenn wir von den Inhalten Kenntnis erlangen und es uns technisch möglich und zumutbar wäre, die Nutzung im Falle rechtswidriger Inhalte zu verhindern.\n\nDiese Haftungsausschlusserklärung gilt auch innerhalb des eigenen Internetauftrittes „soulforger.net“ gesetzten Links und Verweise von Fragestellern, Blogeinträgern, Gästen des Diskussionsforums. Für illegale, fehlerhafte oder unvollständige Inhalte und insbesondere für Schäden, die aus der Nutzung oder Nichtnutzung solcherart dargestellten Informationen entstehen, haftet allein der Diensteanbieter der Seite, auf welche verwiesen wurde, nicht derjenige, der über Links auf die jeweilige Veröffentlichung lediglich verweist.",
                        style: fonts.body(color: colors.secondary[4])
                      ),
                      const SizedBox(height: 16,),
                      SelectableText(
                        "Urheberrecht",
                        style: fonts.bodyBold()
                      ),
                      SelectableText(
                        "Die auf unserer Webseite veröffentlichen Inhalte und Werke unterliegen dem deutschen Urheberrecht (http://www.gesetze-im-internet.de/bundesrecht/urhg/gesamt.pdf) . Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung des geistigen Eigentums in ideeller und materieller Sicht des Urhebers außerhalb der Grenzen des Urheberrechtes bedürfen der vorherigen schriftlichen Zustimmung des jeweiligen Urhebers i.S.d. Urhebergesetzes (http://www.gesetze-im-internet.de/bundesrecht/urhg/gesamt.pdf ). Downloads und Kopien dieser Seite sind nur für den privaten und nicht kommerziellen Gebrauch erlaubt. Sind die Inhalte auf unserer Webseite nicht von uns erstellt wurden, sind die Urheberrechte Dritter zu beachten. Die Inhalte Dritter werden als solche kenntlich gemacht. Sollten Sie trotzdem auf eine Urheberrechtsverletzung aufmerksam werden, bitten wir um einen entsprechenden Hinweis. Bei Bekanntwerden von Rechtsverletzungen werden wir derartige Inhalte unverzüglich entfernen.\n\nDieses Impressum wurde freundlicherweise von jurarat.de zur Verfügung gestellt.",
                        style: fonts.body(color: colors.secondary[4])
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}