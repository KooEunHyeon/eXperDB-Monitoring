﻿Public Class Splitter
    Inherits System.Windows.Forms.Splitter

    Private _ExpandImage As System.Drawing.Image = Nothing
    Property ExpandImage As Drawing.Image
        Get
            Return _ExpandImage
        End Get
        Set(value As Drawing.Image)
            If _ExpandImage Is Nothing OrElse Not _ExpandImage.Equals(value) Then
                _ExpandImage = value
                _DefImage = value
                Me.Invalidate()
            End If
        End Set
    End Property

    Private _CollapseImage As System.Drawing.Image = Nothing
    Property CollapseImage As Drawing.Image
        Get
            Return _CollapseImage
        End Get
        Set(value As Drawing.Image)
            If _CollapseImage Is Nothing OrElse Not _CollapseImage.Equals(value) Then
                _CollapseImage = value
                Me.Invalidate()
            End If
        End Set
    End Property

    Private ImgArea As New Drawing.Rectangle(0, 0, 0, 0)


    Private _DefImage As System.Drawing.Image = Nothing

    Protected Overrides Sub OnPaint(e As Windows.Forms.PaintEventArgs)
        MyBase.OnPaint(e)
        If _DefImage IsNot Nothing Then
            Dim gr As System.Drawing.Graphics = e.Graphics
            gr.DrawImage(_DefImage, New Drawing.Point(0, (Me.Height - _DefImage.Height) / 2))
            ImgArea = New Drawing.Rectangle(0, (Me.Height - _DefImage.Height) / 2, _DefImage.Width, _DefImage.Height)
        End If
    End Sub

    'Protected Overrides Sub OnMouseHover(e As EventArgs)
    '    MyBase.OnMouseHover(e)
    '    Dim Npt As Drawing.Point = Me.PointToScreen(New Drawing.Point(Me.MousePosition.X, Me.MousePosition.Y))
    '    Debug.Print(Npt.Y)

    '    If ImgArea.Contains(New Drawing.Point(Windows.Forms.Control.MousePosition.X, Windows.Forms.Control.MousePosition.Y)) = True Then
    '        Debug.Print(Windows.Forms.Control.MousePosition.X)
    '    End If

    'End Sub


    Protected Overrides Sub OnMouseMove(e As Windows.Forms.MouseEventArgs)
        MyBase.OnMouseMove(e)
        If ImgArea.Contains(New Drawing.Point(e.X, e.Y)) Then
            Me.Cursor = Windows.Forms.Cursors.Hand
        Else
            If Me.Dock = Windows.Forms.DockStyle.Left Or Me.Dock = Windows.Forms.DockStyle.Right Then
                Me.Cursor = Windows.Forms.Cursors.VSplit
            Else
                Me.Cursor = Windows.Forms.Cursors.HSplit
            End If


        End If
    End Sub

    Protected Overrides Sub OnMouseDown(e As Windows.Forms.MouseEventArgs)

        If ImgArea.Contains(New Drawing.Point(e.X, e.Y)) Then
            Dim pCtl As System.Windows.Forms.Control = Me.Parent.Controls(Me.Parent.Controls.IndexOfKey(Me.Name) + 1)
            If _DefImage.Equals(_ExpandImage) Then
                pCtl.Visible = False
                _DefImage = _CollapseImage
            Else
                pCtl.Visible = True
                _DefImage = _ExpandImage
            End If

            Me.Invalidate()
        Else
            MyBase.OnMouseDown(e)
        End If
    End Sub
 
End Class
