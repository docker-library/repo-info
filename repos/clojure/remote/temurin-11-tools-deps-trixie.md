## `clojure:temurin-11-tools-deps-trixie`

```console
$ docker pull clojure@sha256:12112941c3ff7ad10921512b93395d849317593d0559abd2560ac50b041ea4e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:71c297440b1f7427a1d586e3760b3fd46f9c5d06796d4fb6e7d1184d7481fcac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281270218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9159bbfdf320b73bd16b84205e115b3b38c5fd00f87ebd185ba938b752e6352`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:46:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:46:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:46:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:46:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:46:09 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:46:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:46:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:46:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4009f17180581ccdab9c3a56e5edd159199e7cae1c643749ef47a5767dda9278`  
		Last Modified: Wed, 09 Sep 2026 03:46:52 GMT  
		Size: 145.9 MB (145861376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee98b88d8c2f71577303cf12b1b7dc4bd41913da6844d2dd548107a7d3265931`  
		Last Modified: Wed, 09 Sep 2026 03:46:50 GMT  
		Size: 86.1 MB (86070367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219a947f0f2d8d52dd3a97d615ed02b31f371ae5edfa01588ca8c6d17d5969a9`  
		Last Modified: Wed, 09 Sep 2026 03:46:47 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1708ef933bdcefbd3a1b82103049eaaefaf6d2cf77d3ab0cf0d7615f7ad245db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7507724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b3f817d8224c705f60f4b9c940f6d70b4b8d49676eff758a2913b89dcc5f16`

```dockerfile
```

-	Layers:
	-	`sha256:d724a57c6f6efa7dde8009e7f4b14faa6f9b581bd53a0f9dda3047c450264b52`  
		Last Modified: Wed, 09 Sep 2026 03:46:47 GMT  
		Size: 7.5 MB (7493385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efb18be1ef89e1ec974c425121fd616837307087e9223c5ea193a9b487a38e2f`  
		Last Modified: Wed, 09 Sep 2026 03:46:47 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9d1bb6ae1f688b28a3fff3ce5b1e3169ad823a6fbf08bcf51f68f455c59130e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278539513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92cb7b6eb2bdd6da625e0910665c4fddb7f2778b7e1eff5b739f2b78c350dcc`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:57:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:57:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:57:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:57:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:57:21 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:57:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:57:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:57:40 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd281963c2fab42be8bcddb96c2c5fa941e95e849c652daca4124ff994d23ad`  
		Last Modified: Wed, 09 Sep 2026 03:58:04 GMT  
		Size: 142.6 MB (142566281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84a07828d4a11a3f9bc22be01e3a8e3b1d654ff821b03576ed96caae55f9e1a7`  
		Last Modified: Wed, 09 Sep 2026 03:58:03 GMT  
		Size: 86.3 MB (86267734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9967e7ba43766755108da140857d178c476ee1941e7ad69008c853dd593a0e`  
		Last Modified: Wed, 09 Sep 2026 03:58:01 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d8a0fa5505361799c93c30deb33ec6b5a397591a27e0d4c3b0ed528cb691967f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7514853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97de47d34aaf9bf5dac5995b43a2695367b66d802ed23c6185e5e26a695446ba`

```dockerfile
```

-	Layers:
	-	`sha256:2aafdb314239157b339ac37b3dd20be52376b2a7a4d1a7399c1e475391d42087`  
		Last Modified: Wed, 09 Sep 2026 03:58:00 GMT  
		Size: 7.5 MB (7500396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7684ed9c63af7aea188e8093ce9a59eef9fa1aba498cf5b8518143950ee35cd5`  
		Last Modified: Wed, 09 Sep 2026 03:57:59 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:946d767c4e15ea00ddc6430990933e90b9d5d7da04f4039ea3702834b927ce5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (277970684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b530012ded3e2d75de01f523571fa450cb4a4f1136c532fefc2f74a2d8702302`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:35:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:35:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:35:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:35:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 10:35:59 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:44:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 10:44:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 10:44:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4c681dd5309fd8c54e8e52a77339c3ff7b581ac689305d4cd6ec4f4cb1643b5`  
		Last Modified: Wed, 09 Sep 2026 10:40:10 GMT  
		Size: 133.1 MB (133089500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052d0146f6839e952a36302f3c41d8ccc71e4e7996ecb95d36edc8a55fe7e39f`  
		Last Modified: Wed, 09 Sep 2026 10:44:45 GMT  
		Size: 91.7 MB (91716257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f90c182e373083fa6ec2c29a68eab2ff65e15b1843b6ec2617b3a14560c609`  
		Last Modified: Wed, 09 Sep 2026 10:44:42 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:019baa8a5b6c7d20c61d748b4450a8e800bc74911f5c669a4ec113013c9dec75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7511578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01332986f911be086be031008dc1bc918bdda1028e5aaacce5853e64784da3bb`

```dockerfile
```

-	Layers:
	-	`sha256:4bce88f57799e20b6a3cfbc09c07fb255a9f607aa8506ab9c3c5b5f6aa33da3b`  
		Last Modified: Wed, 09 Sep 2026 10:44:43 GMT  
		Size: 7.5 MB (7497191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bd45472a12144af70e0522cf3b32a85d91f1adfbc76d6850aea3ac125c88852`  
		Last Modified: Wed, 09 Sep 2026 10:44:42 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
