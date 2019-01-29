#include "xmlwriter.h"
#include <QXmlStreamWriter>
#include <QTextStream>
#include <QString>
#include <QFile>
#include <QDebug>
#include <QtSql/QSqlQuery>

xmlWriter::xmlWriter()
{

    QSqlQuery query("SELECT NombreDispositivo from Dispositivos_Disponibles");
    while (query.next()){
        QString modelo[] = query.value(0).toString();
    //no se si funciona
    }

    //QString telefonos[];

    qDebug() << "Se crea el archivo xml con los datos";
    QFile xml("formulario.xml");
    xml.open(QIODevice::WriteOnly);
    QXmlStreamWriter escritorXml(&xml);

    escritorXml.setAutoFormatting(true);
    escritorXml.writeStartDocument();

    escritorXml.writeStartElement("dispositivos");
        escritorXml.writeStartElement("dispositivo");
            escritorXml.writeAttribute("modelo","1");
    escritorXml.writeEndElement();
    escritorXml.writeEndDocument();

    xml.close();
    qDebug() << "Archivo formulario.xml creado";

}
