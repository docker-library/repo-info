## `clojure:temurin-25-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:31c18a81c0817dcd7c8210e620008f513e7efdbfdd79ee4882ce14f54b871a7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7af00243607b80d097cd283c1bc74c4d19f3fa7fbc4db5e59ab21ce0a3de5f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224579821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b27d8ac85cc3a3101fdf7b2efe19b80fb89ec23c8afe7ac2b336754a0e94f3c9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:13:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:13:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:13:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:13:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:13:55 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:14:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:14:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:14:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:14:13 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:14:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c247920b6be04cb5bfcd35b7c7e49e22a11eb5238ac3f7aed89433d485d434`  
		Last Modified: Tue, 06 Oct 2026 02:14:35 GMT  
		Size: 92.6 MB (92618074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11d16d25499f79bb8e999a64a57dfe5f6f9331c9bcce7d446d658e57e912b28`  
		Last Modified: Tue, 06 Oct 2026 02:14:35 GMT  
		Size: 82.6 MB (82567505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079391bd3cda8e2bd16a348b9386ac5361766f3b0099915b354ee92e683f426a`  
		Last Modified: Tue, 06 Oct 2026 02:14:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba98b47d759f459690e2bb1af779447a62b04214cbd2395f618f6c7159af770`  
		Last Modified: Tue, 06 Oct 2026 02:14:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:31ab58dea4194147ac0299f7ab3c84493ba055841ca47479dfd336cbed85800f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7463453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24041fffb396a34a3c354f9a4bbf21c9305ecf0a33fc8d114dec0d16a3f6389`

```dockerfile
```

-	Layers:
	-	`sha256:182f8933257058615df3b363d7ee5f7ce1973355179b76a6ac84959ae69cab8d`  
		Last Modified: Tue, 06 Oct 2026 02:14:32 GMT  
		Size: 7.4 MB (7446884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:785a70180f7e98ae03b8445c8044c4552ad123b146c9a5bf9266212e62a48f16`  
		Last Modified: Tue, 06 Oct 2026 02:14:32 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7b1be7ac3bbe88502f7aac5cf86ee80a2d47231f1bf7aefe208b0c4d6db69c9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223681885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8652e8be3c1474baf461ebcfa471e114d07860f2354fd14db4cad2ef7474c18`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:19:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:19:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:19:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:19:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:19:51 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:20:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:20:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:20:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:20:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:20:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93051b2f7dad4c3fbc1e62b1585ce869b0a886a7525b09738ef832bde3e058c`  
		Last Modified: Tue, 06 Oct 2026 02:20:26 GMT  
		Size: 91.5 MB (91528844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa636d1cc4b2c4efcfcdaf91ff54494322e13826c81aefa3e4daa5954020605c`  
		Last Modified: Tue, 06 Oct 2026 02:20:30 GMT  
		Size: 82.4 MB (82390895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eff069a80e4a56ab6e937b9c3bd4ac3b5ad06504d1377a8aaea3aec5831a678`  
		Last Modified: Tue, 06 Oct 2026 02:20:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:712f813802ce5234cc5f900b29d9ac52ab1de73fdc90315c151a86c75ef320e2`  
		Last Modified: Tue, 06 Oct 2026 02:20:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:300656335852fd00c25fc79b3cb562ce645f604bfe84b852e3952c4ef0249ab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd198398fa99a8af63329cf3f33728b82b9a949d8f0a3707ee6faffc7fa71d69`

```dockerfile
```

-	Layers:
	-	`sha256:ceb921b23b4a4616a0027623207ad81e8b464ff26a3eba7e0df28a732467e344`  
		Last Modified: Tue, 06 Oct 2026 02:20:27 GMT  
		Size: 7.5 MB (7453298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9df6aad3d0bd8aceeb0e723685f2810de7e6a44c6c97fcb61494448f1cab1541`  
		Last Modified: Tue, 06 Oct 2026 02:20:27 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:df81e6034d41c3d320573563923f24115d2e3c0e0f31577f55cf7ba0d42c8b0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.4 MB (232443096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9bec1a974b7a4fee9b245c9fea6250c8587a1b85b7f3be48b0dc611aeeecd05`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:24:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:24:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:24:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:24:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:24:57 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:36:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:36:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:36:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:36:40 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:36:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8e960486494651b12db6bd2f54518def876598c3fc3f0b16b492cce72c7858`  
		Last Modified: Sat, 26 Sep 2026 05:28:12 GMT  
		Size: 91.3 MB (91256231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:095a222222a2d11355e2099223aa6c39c0162cebe703ae03265e16d21d0be7bf`  
		Last Modified: Sat, 26 Sep 2026 05:37:20 GMT  
		Size: 88.0 MB (87990747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52f59fbda05881817ff2c0bba18ae8d53b9184ecc7a1ec437015d29d21fefed`  
		Last Modified: Sat, 26 Sep 2026 05:37:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39bc56d255088095173e2856ace9f7331c00d7146eebcb616822bacf199e2a59`  
		Last Modified: Sat, 26 Sep 2026 05:37:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0a52c868ffd9fae5161e4a6c95eceae570d9d5c59a9706963643f426380c0c48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7451256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e48aea36368fabc736d4ee5e8bb388246467bed2e7cc3ee57bcaed5e99e9361`

```dockerfile
```

-	Layers:
	-	`sha256:55e3f3d5aa8a796ac4e331c7e30375cc5c534255d8cf076e172a9d27b4007ffd`  
		Last Modified: Fri, 02 Oct 2026 08:28:41 GMT  
		Size: 7.4 MB (7434627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c4b726ce18e80fea6cf1fd617c9abbc030ff09d9e1c70f8e2b7284f9c2b4625`  
		Last Modified: Fri, 02 Oct 2026 08:28:41 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
