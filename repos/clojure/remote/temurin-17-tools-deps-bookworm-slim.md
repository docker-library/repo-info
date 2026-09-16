## `clojure:temurin-17-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:c5ba76d77c626afb364b2a4ac0c0a16e4cdee65c8b6b60f7bf5a691ffe815344
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:39d5067183b49a8e892b960b644d0ca35a6d64b99ad1e7e219d321b6b5948260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.7 MB (240741280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05475518c4d88782a2c7112397742c0ce5084b37c81a4ec8435654d21faaf4c6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:34:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:34:09 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:34:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:34:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:34:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:34:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b94345012e3a3cbf2e521412d28eec4f076cf0098677899178f9342177eec5`  
		Last Modified: Wed, 16 Sep 2026 04:34:45 GMT  
		Size: 145.8 MB (145822696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022221ea9ccf5006057a397288ccdb653d78a2c27d8bc0019f783badb956c1a0`  
		Last Modified: Wed, 16 Sep 2026 04:34:43 GMT  
		Size: 66.7 MB (66684889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfb1b2db96a7e2ed8bc8f54faaa016d38ffd6a7c18826bc8dc806b170f01853`  
		Last Modified: Wed, 16 Sep 2026 04:34:40 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce61a8ca170bd6ff942b4d0c360890b109a60467e692df63985d8746a5fffa9`  
		Last Modified: Wed, 16 Sep 2026 04:34:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ac73ea4a51ff2bdf6e9241595ec774793b83eb69eef1a13d1f18a83784e935b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc351c7a049b4a6f0a9873c54a870b2b5b692ff3270a6ccf7f8ee1d03374ee32`

```dockerfile
```

-	Layers:
	-	`sha256:98734b4bf560ad3fa18bd1642cade992f887ccf8798c1aee0267e2b6afd4af6e`  
		Last Modified: Wed, 16 Sep 2026 04:34:41 GMT  
		Size: 5.1 MB (5119264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fbcf49e21aa72f15fbeec823a91bf017238e4cde65f63c69bfa5f6ce26f15bc`  
		Last Modified: Wed, 16 Sep 2026 04:34:40 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:27c84d930ffd46d8d0574aef561cf9f6dfe60f9c44f3ac14eb8dbd33368ea910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239449927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29cd410f9eb9a578071ff5dd96085542f83abfdd8a3088bf9402acf4caba3b8e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:34:40 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:34:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:34:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:34:54 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:34:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78502b6b34ad49b5d64ae00de6f2b4e712127c1a0d31005722eed2a6efc413a9`  
		Last Modified: Wed, 16 Sep 2026 04:35:17 GMT  
		Size: 144.6 MB (144647467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7765f8d49748e648c0dffd235271b01ee86aa82135fdc3ca13f6547fb4ccb41`  
		Last Modified: Wed, 16 Sep 2026 04:35:15 GMT  
		Size: 66.7 MB (66684129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c3fd34f742a082310297770f6a3c400bfe82605f5c4f3bdd9722ebd1293822`  
		Last Modified: Wed, 16 Sep 2026 04:35:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca579ab63f6a1b8c111b19d31983a57aef7bf8726d4fc680830b3f513c82ddef`  
		Last Modified: Wed, 16 Sep 2026 04:35:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:20e0622d23bdbceb92783892940a8c23c76c7859b8a3a90b7932cc828fa1f5cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e6311c414ac7eab33443b2b5f0c8b7003390fcd6f1051e0bac87b0f69cc416d`

```dockerfile
```

-	Layers:
	-	`sha256:2048a99d2c59d7d3e54e69eb1213f3a702fc56cc6961b8925362c288ee11ae6b`  
		Last Modified: Wed, 16 Sep 2026 04:35:12 GMT  
		Size: 5.1 MB (5125025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:766dd90d458a7acb4dffcbbcc3cc03c3b031a1a33696d29e4b46d6fe74860efe`  
		Last Modified: Wed, 16 Sep 2026 04:35:12 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cc324f585ae41020f140a583ed68f6777dcd56cf17bf14ace806739e94392813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250250824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae4ed83fcb3626772c9522e3cfd5c72afb2c7041a5a46f48fdc437a373400fb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 10:36:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:36:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:36:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:36:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:36:55 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:47:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 10:47:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:47:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:47:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:47:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc80be73e4bf746793cf59c9e1900b2441594152e9e217de5214b3710f48f2da`  
		Last Modified: Wed, 16 Sep 2026 10:40:33 GMT  
		Size: 145.7 MB (145674262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca3a03916eb246a49180516b43b7fe3d1590df0db1dbb7aa6fe54206c7af2da`  
		Last Modified: Wed, 16 Sep 2026 10:48:13 GMT  
		Size: 72.5 MB (72499042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b283783dbc8e1c01507f44cd1d0aa97756b9da4e89b8f80024cf4076da76534`  
		Last Modified: Wed, 16 Sep 2026 10:48:12 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaaa7cf0fe9aee86ad7f6d21c221f9f0a163b0625a9064978a4b3ce5d616d0b5`  
		Last Modified: Wed, 16 Sep 2026 10:48:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f5bad9b752d0956a129c72ee0213e67963387c923afe471ddd034f7a31846759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f44cd362e7e15f8b496bf826ef759633b2ee47490542b60239e8914ace84e0`

```dockerfile
```

-	Layers:
	-	`sha256:19a391cf1f4d5d42baee50003966f6157acd8898381ad816f0ddb5b82006fc7b`  
		Last Modified: Wed, 16 Sep 2026 10:48:12 GMT  
		Size: 5.1 MB (5124422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3ce3a5141e262e8edaac846a7fba1d479d95dba838316c53ea729a24ab2ddf2`  
		Last Modified: Wed, 16 Sep 2026 10:48:11 GMT  
		Size: 16.0 KB (16037 bytes)  
		MIME: application/vnd.in-toto+json
