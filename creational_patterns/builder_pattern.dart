///
/// The Builder Pattern
///
/// Description:
/// In a reporting system, we want to build report objects in a flexible manner
/// and with clean syntax, allowing users to specify different report configurations.
///
///
///
void main() {
  ReportBuilder reportBuilder = ReportBuilder();
  reportBuilder.addReport(PDFReport());
  reportBuilder.addReport(HTMLReport());
  reportBuilder.generateReports();
}

abstract class Report {
  void generate();
}

class PDFReport implements Report {
  @override
  void generate() {
    print('Generating PDF Report');
  }
}

class HTMLReport implements Report {
  @override
  void generate() {
    print('Generating HTML Report');
  }
}

class ReportBuilder {
  List<Report> _reports = [];

  void addReport(Report report) {
    _reports.add(report);
  }

  void generateReports() {
    for (var report in _reports) {
      report.generate();
    }
  }
}
