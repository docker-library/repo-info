## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:2f02691cc4fb4a6cfe580b573e892e1b39f4317667cc934720062683cff4f906
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:375b0f1bf859e1882fd99e02f48dd5b0085255625fa20743450ede3c303b85f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181826999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a82e90c8614d7a744f15d0ea503c964798f662b064253cca45b943b36db4944`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:25:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:25:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:25:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:25:06 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:25:06 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:25:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:25:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:25:20 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093254dadb641a5ae3ed12df0225a1cf1598149c8a0e09eadf3a059bfcc0c345`  
		Last Modified: Thu, 16 Jul 2026 01:25:38 GMT  
		Size: 55.2 MB (55198724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae95df21193eb765de54e7d4ace3f4a4e22c59004be63cbdb50cebb93d7e7c3a`  
		Last Modified: Thu, 16 Jul 2026 01:25:39 GMT  
		Size: 78.1 MB (78130229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab0789ac0352f249f276b39d76e1b9eaa1961c04e194a22b140897fbac1e7da`  
		Last Modified: Thu, 16 Jul 2026 01:25:36 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f45dc17238cdf3fcffe6e6458b9c50502ef09eb24bcc84a3010fc663f36ff71a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:065c5cb29042fcbdd9a085593b5e11b53a5d538d03f89818071e101a760942ae`

```dockerfile
```

-	Layers:
	-	`sha256:07278dbe9e7b398ac8605209aeb8e0346c30449c2c54d970d518ca0811b038ed`  
		Last Modified: Thu, 16 Jul 2026 01:25:36 GMT  
		Size: 7.5 MB (7496530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:559a3babe2ad33986c2ad7abe8b7ecf1e3bc9b033f71c54954d4d24fa387c661`  
		Last Modified: Thu, 16 Jul 2026 01:25:36 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9baba18d95ecc479b3270d8a1a7c63f4977dea61a00770b90c6d82c6cc18d8ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180778822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e951da46a7ed3f3fc423306a0c70a8595c7f2434608109386c641d096737339`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:19:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:19:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:19:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:19:09 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:19:09 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:19:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:19:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:19:23 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83a7a05228af9843e86249b5caaff0132e720f1943afcb9a54780d2820cdb85`  
		Last Modified: Thu, 16 Jul 2026 01:19:38 GMT  
		Size: 54.3 MB (54272935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eff551a6d43f5db3a75c2e18faec4d8b737fef800e80b23d542d71974c3bd92`  
		Last Modified: Thu, 16 Jul 2026 01:19:42 GMT  
		Size: 78.1 MB (78121554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79e30760e90e5b70a146a4684eac3a8e7df85b9d08028ebf8b27e5da8f3a183b`  
		Last Modified: Thu, 16 Jul 2026 01:19:40 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:16c7d41b693b80a51681d17b5530954f97662b0bdf62352ad2c4b9034ba940c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba226a3cb316be960f62c42f860422d978d513b61c4c0fc43511eb31fcf401e2`

```dockerfile
```

-	Layers:
	-	`sha256:f36298bfd8d5e724db01895b8fe8775b52c81c1de5f196f469c431bdcb6f2cd5`  
		Last Modified: Thu, 16 Jul 2026 01:19:41 GMT  
		Size: 7.5 MB (7502993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:277e90ef4b75579d3b6ded082e01501ff8248713c5e63af2c23358d6fbada6ef`  
		Last Modified: Thu, 16 Jul 2026 01:19:40 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:739321c3997e5c4f553db6f4dd3a5b4f2d20b7a8de396fe7e99aa11ea567937d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188971239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5fcfa96a9dd9780471f774ebdbc473775c8454a5416e5c8d55be0ce549d26b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:22:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:22:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:22:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:22:24 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 02:22:24 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:22:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 02:22:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 02:22:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3076ce2c3295f3987ae487be377474edcc4db07bde71351abdf2269e459d0a5d`  
		Last Modified: Thu, 16 Jul 2026 02:23:38 GMT  
		Size: 52.7 MB (52669147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ac8daaa6a3cc573641aafe227c715105556805d6ed95940365b4b5e15393ef`  
		Last Modified: Thu, 16 Jul 2026 02:23:39 GMT  
		Size: 84.0 MB (83959614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dd8baaeffd6a127e34a2b72e9613954c0df683b2a91405419490381af9bafb`  
		Last Modified: Thu, 16 Jul 2026 02:23:35 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a0f197c4066f920b5876b29b1c46b35038e93ecd9e3975dcbb3de7fa841fb0ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c999ee68d66ebf6376561d63c314193f4ff48ed52a7b645b998a0951618295`

```dockerfile
```

-	Layers:
	-	`sha256:eb46495be5795efeb3089d1632674d05e89637724b750e0f23cfe2445ecc0deb`  
		Last Modified: Thu, 16 Jul 2026 02:23:36 GMT  
		Size: 7.5 MB (7502341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74b24110cefe56da63ae37b642ed52443b1e4cbe89fbf6e8d3447783e956a682`  
		Last Modified: Thu, 16 Jul 2026 02:23:36 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
