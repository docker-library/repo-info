## `clojure:temurin-17-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:7a6d33cb9dfd9fb3750c99fb078275b92f1312419e97eec46596e1288815273c
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
$ docker pull clojure@sha256:82d24d1c4d8368e93c415776791a6beaf50b9ba99a6e14007b86c950554e397f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.2 MB (281232257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46648418181c3a07dba34aac31a311e0e5c95b77bfe848704e9cfe988ba4b4cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:48:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:48:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:48:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:48:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:48:07 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:48:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:48:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:48:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:48:24 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:48:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083de99c5c009e93989d03fe754ec03a03177a4bafece67c5293f46973a20043`  
		Last Modified: Wed, 09 Sep 2026 03:48:49 GMT  
		Size: 145.8 MB (145822679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0320447fba5ff13188574351d821315ae655b5039febdb94e4bad19bce79f85a`  
		Last Modified: Wed, 09 Sep 2026 03:48:48 GMT  
		Size: 86.1 MB (86070708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8871d7d813df3f70f239d3b53d8aaacc26569440a71d266738355bf20686daab`  
		Last Modified: Wed, 09 Sep 2026 03:48:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22b7fe7fef5d571361aef0d58407d1efa3af1c71c1bacc411656c33ea75cd90`  
		Last Modified: Wed, 09 Sep 2026 03:48:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:06671d15c79d774ca95e5615ddc3ad2c9c2be0aa8cbba3d5512480a32674733c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f444830b6ad88ff81048eb71b4471301d2f6d9f50cbce4ef565c496a3e0ed8eb`

```dockerfile
```

-	Layers:
	-	`sha256:fa2f4d296f8f3e3b6ff1b6b7dc0d6714cd46d22a9e2fc523c924305b3844730c`  
		Last Modified: Wed, 09 Sep 2026 03:48:45 GMT  
		Size: 7.5 MB (7473869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f919d209bb062af1e1120c26cbcc95149d1bf4351921a009855cdbc2dda83058`  
		Last Modified: Wed, 09 Sep 2026 03:48:44 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7e3ae25d9111cbdec3e9ecdcccd9bae14a5af43dcf854224712a965d6e073aad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280620816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301e3890b8668077217536d80798c561ba85e3a60a5875d3908b55e3ae1018a5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:59:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:59:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:59:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:59:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:59:03 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:59:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:59:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:59:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:59:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:59:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f47af1f4fa07219f716e00a23de7fec2d029501416253e410bcbbe63a2f83b`  
		Last Modified: Wed, 09 Sep 2026 03:59:44 GMT  
		Size: 144.6 MB (144647498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be04e8129295e021ef15ce02ff7049d7c0022e7b5864bef78e437c69335b86cf`  
		Last Modified: Wed, 09 Sep 2026 03:59:43 GMT  
		Size: 86.3 MB (86267424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3729c3eb8afdc90c7f5efd49110bb8633993d10818b8cebd49732052c664b019`  
		Last Modified: Wed, 09 Sep 2026 03:59:40 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffca0648ccebf67ebabcde816a87863f7e75fccb1074519f8a51abea633ab381`  
		Last Modified: Wed, 09 Sep 2026 03:59:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:30243961bae279df6e2c7df05f9deee15b3956329c7c7ab33678c94e335e503f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff70a800954cfbd0751ee45db42dd8c071627bc34aee2b6aa95d31973a439593`

```dockerfile
```

-	Layers:
	-	`sha256:f6161889b59a8ca8372e691f5a8e9da2fefe182df7aab0a926a501d6fa9e4660`  
		Last Modified: Wed, 09 Sep 2026 03:59:40 GMT  
		Size: 7.5 MB (7480262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5b3d36ed055b784f81cff5d5f3d10d35edf95bef24b1de01ec9bcad87f9a569`  
		Last Modified: Wed, 09 Sep 2026 03:59:39 GMT  
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
