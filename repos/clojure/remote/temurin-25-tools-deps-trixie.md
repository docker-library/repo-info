## `clojure:temurin-25-tools-deps-trixie`

```console
$ docker pull clojure@sha256:5a1584a6a9707208639e11a439f166ca9a6e5aeb15381af286dc6bdc8f0371ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:3465ce8db3c9264ed87aeec5de7e4f8439cec017f3ea6d4bc65e2d2d7a8cbe0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.0 MB (228024507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b702ee6ee2d81b5aedfc58544ecadcb4d3aa0897fb2ed1f19e62dc0de8c3fcc4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:50:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:50:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:50:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:50:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:50:35 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:50:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:50:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:50:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:50:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:50:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b36cf7b2ae3946884111d3aa7909ac83c60ac643af05dde865730a9349de28`  
		Last Modified: Wed, 09 Sep 2026 03:51:13 GMT  
		Size: 92.6 MB (92615071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b647740f313e2ec0b0b8408a52200d2026df0f8452bbbc6f2b83107addccfe9`  
		Last Modified: Wed, 09 Sep 2026 03:51:13 GMT  
		Size: 86.1 MB (86070563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044cf5ace6a8aa7423e8bc6be42a3e6f513fe8dc5b847489c605ed6dadd7559b`  
		Last Modified: Wed, 09 Sep 2026 03:51:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0174b2b02f06eaaae71d4ea3791375d3d66281a738274b397d09558cbaad3f82`  
		Last Modified: Wed, 09 Sep 2026 03:51:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b7a4efa255b6e5269e2eb6569d1a158de4506256e67792070fd508a6223205ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7458502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09c5c7a1318c28464a87feb0b49418b3b3b67925d63aad41550183f68b9fccfb`

```dockerfile
```

-	Layers:
	-	`sha256:d561df521ed1c5341267fb14fe9268b76edb05979ea693b40f0ed2c891cb8296`  
		Last Modified: Wed, 09 Sep 2026 03:51:10 GMT  
		Size: 7.4 MB (7441933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4342416daa56719e6430fb40803843bc61836d53396e1c38b577434d477c4c80`  
		Last Modified: Wed, 09 Sep 2026 03:51:10 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c17143472ac82f6fba5f9659d5b56c077b60fcd20214c653b0d2eb74893c3b5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.5 MB (227506006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b43d412a6d9bf731df38e4b7c7dcf87bc34c84c2560ce8d5003ddf2ef113a7d1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 04:02:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:02:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:02:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:02:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 04:02:33 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:02:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 04:02:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 04:02:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:02:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:02:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d0d2bbc44509cc5b4b52e3e26986be6f9f3f9737909e2e187545bea369a375`  
		Last Modified: Wed, 09 Sep 2026 04:03:13 GMT  
		Size: 91.5 MB (91532222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd0db5f0ff307669c1515d4db97a6db256a44612300f290857463b06575f141`  
		Last Modified: Wed, 09 Sep 2026 04:03:13 GMT  
		Size: 86.3 MB (86267894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eba4de76a508d86a54540c85a54b313b0d92aaa70ea3793584fbdce27e3d5e89`  
		Last Modified: Wed, 09 Sep 2026 04:03:10 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837077499d7f27c0fb7799beafeaefcdd622f208c69d05dbade3d26570798b00`  
		Last Modified: Wed, 09 Sep 2026 04:03:10 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c7bc42dcd26065b4d027b30fd2e1787d5f4e2d61942d73f5f635d268b6850a0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7465058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3da5763be429e220d0260413b2b1fe652bb8f2a3ffc0267880c294ac579423`

```dockerfile
```

-	Layers:
	-	`sha256:48e19cc7872bd0babc814b250c56b3f37aa29ac6173745b2ff89bdf0ef5c3bef`  
		Last Modified: Wed, 09 Sep 2026 04:03:11 GMT  
		Size: 7.4 MB (7448347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8abda458ca9bd6663c4087cc9b72348f37f4a4efc6132f36ca5063ff6d60a6a0`  
		Last Modified: Wed, 09 Sep 2026 04:03:10 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:8637614b9f6a3cae71b1517214a32db05727301522da21fe700502229b951efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.1 MB (236137863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6ab5d81215843b05f5225ac7ba48d2a85bd77b8d7b067ed3a4f2ef9574a1fe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:28:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:28:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:28:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:28:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:28:25 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:29:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:29:15 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:29:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f042512cdeeb3671805656526c674d63e4666ca8945ffdb37a0a08d4079e481`  
		Last Modified: Fri, 04 Sep 2026 00:30:08 GMT  
		Size: 91.3 MB (91255831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1350bb3e20a6eebbcb50bc6e7db5f6555266da2bdebc038d0b390d8332fca1a9`  
		Last Modified: Fri, 04 Sep 2026 00:30:08 GMT  
		Size: 91.7 MB (91716706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983fe8f9b61e9a91d68834cb44983fcc62c76a6e35cbb6f5e88f520e020a7df7`  
		Last Modified: Fri, 04 Sep 2026 00:30:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06379cc879a2aeb59f40fdb55741a089df2ce22bf05064b509a6400540913c8d`  
		Last Modified: Fri, 04 Sep 2026 00:30:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2f365bcc07792f9a91bf875d1abcb0f89fa73aa6233091f07c200d008048b1a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7446307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bdf0fae4f0e5d9ef3b1c3e508dadf8ff30e8ba2be5aba35635bbcd83af4b306`

```dockerfile
```

-	Layers:
	-	`sha256:a929f73d483be613876a94a9d883b7da0f84d9214fadcc901936b51729798d83`  
		Last Modified: Wed, 09 Sep 2026 11:17:25 GMT  
		Size: 7.4 MB (7429678 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c74b722ac7f69961c2c4f346cb39d6519087bc276f43afa9c2eccf8ee3598b9`  
		Last Modified: Wed, 09 Sep 2026 11:17:24 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
