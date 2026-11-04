## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:99eca501dd50cab19f30c18cb66587be03c3cf3535ee5c3a8610aeea676746a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:439b518513418cb03dc683d04d8669fce6d7aed9a217950b832deefc52255ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240842355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a3e7032f8b008772bccc23b726482a753efaafc7790ab4191e4bac19cb6a9b3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:18:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:18:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:18:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:18:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:18:22 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:18:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:18:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:18:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:18:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:18:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1633f940878f4d2ef52851d6fc8f902101587a3c0324237e60c3e75a6d8b3b61`  
		Last Modified: Tue, 03 Nov 2026 22:18:55 GMT  
		Size: 146.1 MB (146086106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f54c87731c7e4255b3732d06cddab945a4f47a6fc463c8a02c1ef2fec11fd2`  
		Last Modified: Tue, 03 Nov 2026 22:18:53 GMT  
		Size: 66.5 MB (66507767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d237b1038098af24e3e8789a5de22bce21d8e9e59b28ef9a9245fba2488cc72`  
		Last Modified: Tue, 03 Nov 2026 22:18:50 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8253a93a6259913bef3e3221657b777bc7167f60a4abfbeb458b5a25ee897ee`  
		Last Modified: Tue, 03 Nov 2026 22:18:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fc847a8cb250f677a0a8461f9e28301d27d149df9c1215c589664f87f3a76463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c9fb660eb3ad8f301c58c97335ff28d6a3d83c15ac9478af7e2c01f5e31ab7`

```dockerfile
```

-	Layers:
	-	`sha256:859a0f77f0f8659699f1c79520629b218162a287b006d795eed64bcee8862f20`  
		Last Modified: Tue, 03 Nov 2026 22:18:50 GMT  
		Size: 5.1 MB (5118105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a8a033a854a39050d3667c3ca669e111b29a6df824f25e0c89e633de207ba43`  
		Last Modified: Tue, 03 Nov 2026 22:18:49 GMT  
		Size: 16.0 KB (15988 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:24cdc02f8bc256f057c8cbb9cd96097483fca3d21024ba293252a6d0e3f86ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239596416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b249fc257e82b0ca9dc54c4c6d7ad0e3ece8ec3c8012547e95fc44f98300e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:17:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:17:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:17:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:17:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:17:43 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:17:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:17:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:17:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:17:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:17:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50466e7df80d328d948fd87395de17269773016c89991393223f272232c6878c`  
		Last Modified: Tue, 03 Nov 2026 22:18:20 GMT  
		Size: 145.0 MB (144957161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f293d57a774adfab7850be6da85d05da114607f7ae99269c9c88f99b82d8a9b4`  
		Last Modified: Tue, 03 Nov 2026 22:18:19 GMT  
		Size: 66.5 MB (66500258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ff23906ea536b2d401286d952700b85dfe97f470c19e2d3d12618c49937582`  
		Last Modified: Tue, 03 Nov 2026 22:18:15 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b010e0e87be1b7369c779a3ed3217eb1ddde94f5ee5b9af15f0b82b4cd5c4dd`  
		Last Modified: Tue, 03 Nov 2026 22:18:15 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5bf5ba959c339c03e7556e5592997c23d151feebb049d24675281ae5b0002abd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c2ab1c09a14f772f843e446d75e3db92c87f86b628af3856e06dedb04c48fae`

```dockerfile
```

-	Layers:
	-	`sha256:dc52ccc685bcdb14f764b975961eb4e552e0ec41a172419931b356d9185d92f5`  
		Last Modified: Tue, 03 Nov 2026 22:18:16 GMT  
		Size: 5.1 MB (5123866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:574d6726b132b321b8bbb1d9e0ae5a2ece0932afbecc2fb628156967637f7b9b`  
		Last Modified: Tue, 03 Nov 2026 22:18:15 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9012d817c5e2ceb9dbd7badaa6f9378b6c1f1dea040ac4779c9b946d744fc2d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249288207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:031f2268ec7639adcd591e0250a49e2166d34085b1aaecd06b1767c6fb70a653`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:33:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:33:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:33:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:33:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:33:32 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:47:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:47:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:48:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:48:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:48:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b0ef70b2874f7493a9488f8c19903ddf56212078c26b3694e1aaa3cf5a1404`  
		Last Modified: Tue, 03 Nov 2026 22:37:38 GMT  
		Size: 144.9 MB (144860490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd436a03e08360b2c1a6bfd9dc62d99372fd9a2b5cd7c1cf13bed0d43a53fdc4`  
		Last Modified: Tue, 03 Nov 2026 22:48:37 GMT  
		Size: 72.3 MB (72333833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317833b23f2af4b1f1562d4c23980c4b1b753e6297784bfd4b56d9cb7a4a7cff`  
		Last Modified: Tue, 03 Nov 2026 22:48:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a0035a0862775b977b8649178c90ae2cf94df9850a8166dc90611fb9497e3d`  
		Last Modified: Tue, 03 Nov 2026 22:48:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5e2d7c268e19d8a966f69ad2675119d9b33d9569855f0796fde242c1c3659725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:292c7cb38e2845fbac7d2933f142af5d504570ee17e27dd5ae65bea1fc5cf9ac`

```dockerfile
```

-	Layers:
	-	`sha256:bb552eff4b9c6fe2a257c6684c761d7ef492ae85b0b1438d40cb177abc6789b4`  
		Last Modified: Tue, 03 Nov 2026 22:48:35 GMT  
		Size: 5.1 MB (5122017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45932c0ca842169f7ee8421feb807773f7d208d34afffafe079bcc3ae60cb72f`  
		Last Modified: Tue, 03 Nov 2026 22:48:34 GMT  
		Size: 16.0 KB (16037 bytes)  
		MIME: application/vnd.in-toto+json
