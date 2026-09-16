## `clojure:temurin-17-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:7f26f1bfe140146eafc24d792239923eab96af1faa8414b8f0b55d671100b9d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; amd64

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:703e18ba712680b949563a5e0eb779142741bc766d3e1ecf2aceb8e25b05e19c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290556641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d99c16a24bad4c9f3db98c744f5dbc2c2c2756ace4ee9d6430fb9369bc9e9d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:50:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:50:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:50:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:50:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 10:50:57 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:00:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 11:00:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 11:00:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:00:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:00:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44354770dcb448653d17ad2f8e125a868d715f2a73a24f399cae252aa8480b9a`  
		Last Modified: Wed, 09 Sep 2026 10:56:47 GMT  
		Size: 145.7 MB (145674329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04ec4c20fa9fb60070484385be4d184c869fe342cd9aae0e5e02d98ca1f9064`  
		Last Modified: Wed, 09 Sep 2026 11:01:31 GMT  
		Size: 91.7 MB (91716990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e167f02d823522c8eea43c2090c1843a5b644e3095b4a065d56f72233a2002`  
		Last Modified: Wed, 09 Sep 2026 11:01:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d797ef8d9ed19bf8fe69f0da0f5e46d1dedb9dd7584237c8f8955a62500664`  
		Last Modified: Wed, 09 Sep 2026 11:01:29 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dcfeafd1e3f59788cec9e98e992f889f28d7658fdfbc212e00f0ff3b89750ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cce8fac663be6468d1445ff934b56bc4e48728e3d8f0960ccb4d1d262f6264e`

```dockerfile
```

-	Layers:
	-	`sha256:f25d12e73ac78df324c5d87f922c99b029886515fb72c94099486e27b2b0f8d2`  
		Last Modified: Wed, 09 Sep 2026 11:01:29 GMT  
		Size: 7.5 MB (7478290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8791e52cb3aef6c5deef011cd9d87c90f141555f553fa056faff8c9cb6b2655`  
		Last Modified: Wed, 09 Sep 2026 11:01:29 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
