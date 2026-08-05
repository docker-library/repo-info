## `clojure:temurin-8-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:8ceb1510fbde08aaedadac5f6dd335bbf43cd685c9e0737dabd9618446b77a2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:35d4742ab5dffa9825dd9aad40f465b13d742a3f3a80f201bda1370ae7f47a78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181840386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2fe71793eceeb287f84a5b0b287a2dfc01ec91abe598ad3e6b5098a0e4f47d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:17:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:17:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:17:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:17:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:17:08 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:17:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:17:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:17:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67e94907b048f7b6d09154c893152a14a27471e4482bef8647a18863fd24ce8`  
		Last Modified: Wed, 05 Aug 2026 01:17:41 GMT  
		Size: 55.2 MB (55198686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0496a0601270a9886359c94270495e13eadfa1be54822a869c5ac1dc1318945e`  
		Last Modified: Wed, 05 Aug 2026 01:17:42 GMT  
		Size: 78.1 MB (78143966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0bb558160a3e9a725f6e5730f064edc74c83af2569c18459663dda183ed8ae`  
		Last Modified: Wed, 05 Aug 2026 01:17:39 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7871d35a8b6d23c7078afd528038388bae8d197c10e9ce52ada9fa204db05415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a82a3d1bee73a1f2a2cf64c5e20569857196cb463fc01efeb9029fb7e05f2a6`

```dockerfile
```

-	Layers:
	-	`sha256:11140f8180fd6c1e6d74d4e45f2e5ca5dd42a11948a227eac86748d59d792084`  
		Last Modified: Wed, 05 Aug 2026 01:17:39 GMT  
		Size: 7.5 MB (7496530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10fa0429b32ba173503557a7c726f5873fc912643a29cd91e1387d49a930ba10`  
		Last Modified: Wed, 05 Aug 2026 01:17:39 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9dc04f8f583931f85db41870fd8a1a4900716876a3125fb3559fdbb08c7c7ae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180785516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e912bf7c5c5d718641da5c93faea8677e2e24b6bc25df241e5e38c71d0c4dcd`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:22:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:51 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:22:51 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:23:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:23:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:23:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e2ad263a22a03ba22474bca11ee7de22583407d7a4bfef34b1a00737ae1802`  
		Last Modified: Wed, 05 Aug 2026 01:23:24 GMT  
		Size: 54.3 MB (54272910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661fc9318b450874b713dcb15ff63b5680a083309b305b8d5b424ee80c02d1cb`  
		Last Modified: Wed, 05 Aug 2026 01:23:25 GMT  
		Size: 78.1 MB (78128583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36c8a7563873296674ab10e5d4814a251b72ecb10af905ee336a44398a22f61`  
		Last Modified: Wed, 05 Aug 2026 01:23:22 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e23e2ab7ebe359fe46498b04624ed15078428ff1a56bf0a95b314ad3708d95cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7a3dde8035657c7d6faa91c9b58445bcfae8db271781fb1f0871bf7864d49d`

```dockerfile
```

-	Layers:
	-	`sha256:697c08a072a3a482de5713e45efa16782c03143501f94e44f38b2f0b44d21a65`  
		Last Modified: Wed, 05 Aug 2026 01:23:22 GMT  
		Size: 7.5 MB (7502993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54a44d75288ecc0a0242fcb7867e5bc3d62101969b6d73f61ae7cbde6554ea9d`  
		Last Modified: Wed, 05 Aug 2026 01:23:22 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:0c3cd89a3d504137e3ee6dd9ade95055113853d791bb6c1b4913a6a933f05185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188984785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c737b38962bc7411c259ab0ab4355cf0a71cc099fba7f8fb698fa9994e8f1ea6`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:21:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:21:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:21:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:21:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:21:41 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:22:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:22:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:22:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4304da7a4f95c506b3492f974b3f3847a4dcf76f67cadf6ece0d8439b15a202b`  
		Last Modified: Wed, 05 Aug 2026 03:22:51 GMT  
		Size: 52.7 MB (52669151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7925eef3cc05a3e2d6ad2391febde0663ecea6b28d593b257269f0a3511f139`  
		Last Modified: Wed, 05 Aug 2026 03:22:52 GMT  
		Size: 84.0 MB (83973515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63e005fa0854809aeb61ccf3c66f51978c89a4a0b36835d3c99909c8acb0a97`  
		Last Modified: Wed, 05 Aug 2026 03:22:49 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:dbbe0acc10cd2544f94ebbd61f1d04b1b7778ef8d5ccca07497939f437cb848e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6377d730923c3d0d5e50103ea16a5f8797d741ae7dbc9b89c471cf14e256f856`

```dockerfile
```

-	Layers:
	-	`sha256:1899be655e41197ae43a391d2fe999fda189cff9ebc1759859f8f2cd4862b9bb`  
		Last Modified: Wed, 05 Aug 2026 03:22:49 GMT  
		Size: 7.5 MB (7502341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a51310e9f3b3ce3fed5b78543f4f737529f1ab8f3118321b6021dfc8525ed787`  
		Last Modified: Wed, 05 Aug 2026 03:22:48 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
