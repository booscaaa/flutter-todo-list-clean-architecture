class Link {
    Link({
        this.href,
        this.method,
    });

    String? href;
    String? method;

    factory Link.fromJson(Map<String, dynamic> json) => Link(
        href: json["href"] == null ? null : json["href"],
        method: json["method"] == null ? null : json["method"],
    );

    Map<String, dynamic> toJson() => {
        "href": href == null ? null : href,
        "method": method == null ? null : method,
    };
}
