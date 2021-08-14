lod = {}

$(function() {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })

    $("#marshall").click(function() {
        let inputValue = $("#marshall").val()
        return;
    })
})

$(document).on('keydown', function() {
    switch (event.keyCode) {
        case 27:
            lod.Close();
            break;
    }
});

lod.Close = function() {
    $("#container").fadeOut(175);
    $.post('http://lod-blipui/close');
}

$('#market-ackapat').on('change', function() {
    if (this.checked) {
        $.post('https://lod-blipui/marketac', JSON.stringify({ blip: true }));
    } else {
        $.post('https://lod-blipui/marketkapat', JSON.stringify({ blip: false }));
    }
});
$('#banka-ackapat').on('change', function() {
    if (this.checked) {
        $.post('https://lod-blipui/bankac', JSON.stringify({ blip: true }));
    } else {
        $.post('https://lod-blipui/bankapat', JSON.stringify({ blip: false }));
    }
});
$('#devlet-ackapat').on('change', function() {
    if (this.checked) {
        $.post('https://lod-blipui/berberac', JSON.stringify({ blip: true }));
    } else {
        $.post('https://lod-blipui/berberkapat', JSON.stringify({ blip: false }));
    }
});
$('#dovme-ackapat').on('change', function() {
    if (this.checked) {
        $.post('https://lod-blipui/dovmeac', JSON.stringify({ blip: true }));
    } else {
        $.post('https://lod-blipui/dovmekapat', JSON.stringify({ blip: false }));
    }
});
$('#kiyafet-ackapat').on('change', function() {
    if (this.checked) {
        $.post('https://lod-blipui/kiyafetac', JSON.stringify({ blip: true }));
    } else {
        $.post('https://lod-blipui/kiyafetkapat', JSON.stringify({ blip: false }));
    }
});
$('#garaj-ackapat').on('change', function() {
    if (this.checked) {
        $.post('https://lod-blipui/garajac', JSON.stringify({ blip: true }));
    } else {
        $.post('https://lod-blipui/garajkapat', JSON.stringify({ blip: false }));
    }
});
$('#mekanik-ackapat').on('change', function() {
    if (this.checked) {
        $.post('https://lod-blipui/mekaniksac', JSON.stringify({ blip: true }));
    } else {
        $.post('https://lod-blipui/mekanikskapat', JSON.stringify({ blip: false }));
    }
});