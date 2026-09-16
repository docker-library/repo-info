## `clojure:temurin-17-tools-deps-trixie`

```console
$ docker pull clojure@sha256:1bfb477cf9e0638501ced778b6ca8a47879243627f75d5c9b3f73867f1e1ae33
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:297b87e7138f55a617ff1b7fca2884134e344c96439553f9f68dfd4b06c4b28e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.6 MB (283644325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15ffd83a5bc7f0fde356706f054bfac4ad55c7f4e3b88ea0b12b40b2fe7116e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:34:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:34:35 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:34:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:34:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:34:53 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:34:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020548485aedc7ad7016d1358a2ae51d8814dfa0cf37f10eafdb49a7df4a716d`  
		Last Modified: Wed, 16 Sep 2026 04:35:16 GMT  
		Size: 145.8 MB (145822694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b4ac132d190521af646a947307139008e10d711d010b5a7d3a691b145a025ee`  
		Last Modified: Wed, 16 Sep 2026 04:35:15 GMT  
		Size: 88.5 MB (88482764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526e6cd84f0fa99e37688064f7a33e5ed208b09c032286bef89b7106a6d0a788`  
		Last Modified: Wed, 16 Sep 2026 04:35:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b76b554a0646a48dfd1c21f0bdd5c01bea429a48016570d9da13a697deb79f`  
		Last Modified: Wed, 16 Sep 2026 04:35:12 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ee44bed4ab3dbc480a61ec8471125154a5661e7fb73c10eba9a88d6b56373930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cb5dba337a8ea8072578922eb3e632252a1f21bd0027cd828261f50d7b43b7`

```dockerfile
```

-	Layers:
	-	`sha256:22495da6b7fb5b8c46b1456708bdaf2286718fc8ffb881789c3644944cd77878`  
		Last Modified: Wed, 16 Sep 2026 04:35:12 GMT  
		Size: 7.5 MB (7473941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b7605bf235f5ccbc7aa705a53d54127bdcdc7293410d717a0d181d806015a6b`  
		Last Modified: Wed, 16 Sep 2026 04:35:12 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0527e95791a864c2a068133998bed6080a7068ef9e3efeebb0cec8b7c8419ecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282982222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7c07cc629d399c62429f7bf50e62024c48632fac4b2aa63868faea3373dc21`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:35:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:35:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:35:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:35:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:35:06 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:35:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:35:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:35:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:35:26 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:35:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c0a5faac12bb44d776bdff907fe54ffb48222ed35798ff94866bc255bae618`  
		Last Modified: Wed, 16 Sep 2026 04:35:52 GMT  
		Size: 144.6 MB (144647463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1946efe9dd740357ef7e3852c2d3764d2a1c4b0ade95e093e7491cb1581b1bf8`  
		Last Modified: Wed, 16 Sep 2026 04:35:51 GMT  
		Size: 88.6 MB (88628860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b791ae1d58796672c86844b9f647acf1a9e30bc6588c1e441017c10f45f3e0a6`  
		Last Modified: Wed, 16 Sep 2026 04:35:47 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12782fd681cc14a51977a959dd9669a0732473b9aff43cec3adefe5e92814041`  
		Last Modified: Wed, 16 Sep 2026 04:35:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a5f6de49cfa014dc84f37f07e9578f2171952f70437a5af01171aae5ccdf48f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1dc95d5823d831d469f95217259aa96ad03a685dbcacde4abcb30944d9e350`

```dockerfile
```

-	Layers:
	-	`sha256:b0b8943feefc6f9cd453dfd0c6f175a7891c4bad3fb1291d42ff902c1de2d189`  
		Last Modified: Wed, 16 Sep 2026 04:35:47 GMT  
		Size: 7.5 MB (7480334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95f93808098f5c41a38a2fe6693d912fa6e8fe8fe30cc1fb1eda643633c19deb`  
		Last Modified: Wed, 16 Sep 2026 04:35:47 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:24a3b88a07790fdd4ddf69287ba8bb9b3dd17469ad1c5044b70c293932238736
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.1 MB (293143705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1be07f0837662da36f15cfb75642bc5f49b2cd7bb039e8631053e89eec5df2f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 10:40:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:40:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:40:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:40:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 10:40:46 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:49:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 10:49:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 10:49:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:49:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:49:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e97171d710898b8837b880924833783b0d54fb957ef5c4cea163b9e766e5f847`  
		Last Modified: Wed, 16 Sep 2026 10:44:59 GMT  
		Size: 145.7 MB (145674285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859981762499ae06ddb0510278a1640203c5570a9c2a091bf4e62a3e97d1be7f`  
		Last Modified: Wed, 16 Sep 2026 10:50:06 GMT  
		Size: 94.3 MB (94304090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f924db950790cb5768b54e4f1925ac2096fe45441a37d9ec2688e4205d9a0e`  
		Last Modified: Wed, 16 Sep 2026 10:50:03 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0adf581165d92d972976fc5537d8f1e6a4219b1f3a076b7b1fb50799812312`  
		Last Modified: Wed, 16 Sep 2026 10:50:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:65c4ca455961b830c7b8903bc9d9e59a258665a61cbd28a228efe7478b49275e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e074821beeb832657a7ba011891afa1f182fe538ed76ac80ab120268eae459c`

```dockerfile
```

-	Layers:
	-	`sha256:e80265455ae7983b586e97401b6c39012796fbc9ea0445730b4441535b670b44`  
		Last Modified: Wed, 16 Sep 2026 10:50:04 GMT  
		Size: 7.5 MB (7478362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa23cb959d6249f1cb3953067d91483f4fb4e1d63ada1b20d6840f71246943f9`  
		Last Modified: Wed, 16 Sep 2026 10:50:03 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
