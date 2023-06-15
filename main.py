import sys
from pathlib import Path

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # 添加自定义模块的导入路径
    # engine.addImportPath("import")
    import_path = Path(__file__).resolve().parent / "import"
    engine.addImportPath(str(import_path))

    # 加载 QML 文件
    qml_file = Path(__file__).resolve().parent / "main.qml"
    engine.load(str(qml_file))

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec())
