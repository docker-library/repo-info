## `clojure:temurin-17-bookworm-slim`

```console
$ docker pull clojure@sha256:86530eafb722a7ff05ba7f3f7ee571cb6f0af09031438cb9cde31901c5c7e40f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:334fde037a4e7b49798274ff4855543e5be982a8862575f5c39f8b6cf387b8cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240756996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6ec384570c03e7467f8c3cef15f2f74e770d66537044028f4a77127f37ae85`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:45:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:45:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:45:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:45:42 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:45:42 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:45:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:45:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:45:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:45:56 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:45:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f768cdf7372613d75b94296b70ebba24e391d34cd43ff33efb673059fa7e94b`  
		Last Modified: Fri, 02 Oct 2026 02:46:18 GMT  
		Size: 145.8 MB (145825468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423e03cb7a139e59f2f3e531e447afe9b01c5d0fddac16053a633e75360177b9`  
		Last Modified: Fri, 02 Oct 2026 02:46:17 GMT  
		Size: 66.7 MB (66692042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0d3d203e1c5b0bddcb4269c71e405e557972c979eb414bda693e5a3613497d`  
		Last Modified: Fri, 02 Oct 2026 02:46:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7864d6565e03f869ee00bdccc9eafd6ded57511fbe08c9d6c70ed4f424a34fe4`  
		Last Modified: Fri, 02 Oct 2026 02:46:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:349c739f032a8848f26d8e2e44fea85a89041c46b6060d38c98a936bd4ddc500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb3bad4902685f762431486ece78068bf54207bfd381ee35a81bf68f21fde41`

```dockerfile
```

-	Layers:
	-	`sha256:ca4477ed94833c97bb7db63590a3cb61f0b5e5662bbcae1a51a56556940a1334`  
		Last Modified: Fri, 02 Oct 2026 02:46:14 GMT  
		Size: 5.1 MB (5119308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:441dcd8d36c02115da513bc5c77c9c70e49c920c7139709b678b8a4f2146e66e`  
		Last Modified: Fri, 02 Oct 2026 02:46:14 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:131092ad582d58338597ed3524a96d18638d6e91571d1df2545147033fc8fefd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239452033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:004d5911415c4a85cfff841115a806a1b2dc82fdd1b38cb0c210f5baffe93c2a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:45:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:45:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:45:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:45:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:45:30 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:45:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:45:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:45:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:45:44 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:45:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59a8ba67cf9316f42cd71f28ae49dfe1c01b2b9a9d0ac6f8964ade85c58aed1`  
		Last Modified: Fri, 02 Oct 2026 02:46:06 GMT  
		Size: 144.6 MB (144648255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d4c37dc588c5c43f82a3ea945d017b2e4d221deb0dc95576b691c59d01deaa`  
		Last Modified: Fri, 02 Oct 2026 02:46:05 GMT  
		Size: 66.7 MB (66679056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b000a5563f795d307723b689ea896ea277dbbd505a663a02daa48aa41d026831`  
		Last Modified: Fri, 02 Oct 2026 02:46:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3e26d8a32c1ce376364f640441a775522c0d1b48cb984073fc7829638ae601`  
		Last Modified: Fri, 02 Oct 2026 02:46:02 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f81d52bcc4876654fa85e7ec098106c6e88a65fc0a823dded2d5f124ffac351d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb7011915657fc3f015c8064cbe2fade7ad32bcd9d443a68d666a8bf5bc0e80`

```dockerfile
```

-	Layers:
	-	`sha256:29057eee64990af0a25a51af25bfc7b8d2c5fded25fd02fea6520c71896f95fc`  
		Last Modified: Fri, 02 Oct 2026 02:46:02 GMT  
		Size: 5.1 MB (5125069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0b496817b8e94ba532209ee14f0f49faf3e8378eb15bc1f9a7134c3e6a909f0`  
		Last Modified: Fri, 02 Oct 2026 02:46:02 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:617c552575f8100529318aba4ebf057b289b1e906f4e59611d90ee1ae28b9ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250253019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46304b3352369a1e06764518ab3bfe1c863886505a50a9e4d30d45539c14030b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:27:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:27:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:27:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:27:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 04:27:11 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:44:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:44:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:44:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:44:31 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:44:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e09bd0bc4bfd1579162c762c0467fb2c1dceabceec6f74e228c9785636aa33`  
		Last Modified: Sat, 26 Sep 2026 04:29:51 GMT  
		Size: 145.7 MB (145670567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:722b4437bbd3a79378d18f5b873b6974061fe8b7ac93ccd00beb5b8eea7bc7bf`  
		Last Modified: Sat, 26 Sep 2026 04:45:09 GMT  
		Size: 72.5 MB (72497846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee3b72dbb251cbac0c81a268cb2fd24001786a9ebb622c84d6aab00d3a97561`  
		Last Modified: Sat, 26 Sep 2026 04:45:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd6d291326294bc5402fcc45e81fdc0e9c0f02579644f2c1c00bd8745604b7c`  
		Last Modified: Sat, 26 Sep 2026 04:45:07 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8eb9d5ce73a5eecc8c2636c50e28281a251df6c7870ad4dcaeb4f6409f256145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5de173dd249f0d502884329b2d00f9080ec78b66eb4a0141786c8b9f9ff87898`

```dockerfile
```

-	Layers:
	-	`sha256:0ef5ecc570bf732393a92af06f5a0f667f9e0545596abef17b92b74a8aa4943d`  
		Last Modified: Sat, 26 Sep 2026 04:45:07 GMT  
		Size: 5.1 MB (5124466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a95f548e7a9bf3ef4f59f954759fb8f02f7c3547b3d5f93969e71a3c038ba902`  
		Last Modified: Sat, 26 Sep 2026 04:45:07 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
