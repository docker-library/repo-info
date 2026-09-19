## `clojure:temurin-21-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:72121f1c46ab2876b2c40cf2e21df88df50d16045dad6a05a72947feb966e5b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:ff303cb916288c663e77e0e789488b9e571ac3cd6e8744003d66ff276a64f874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290067909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8e6c4fd0cf3e822e76f99338b125e86a77c00fdcda17e1a9b86640f26beb948`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:16:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:16:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:16:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:16:29 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:16:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:16:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:16:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:16:46 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:16:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c2e8f137e12549eb63c42522b76e9aaf192a774fcc8e5087d6d0f2ea462ef3f`  
		Last Modified: Sat, 19 Sep 2026 01:17:11 GMT  
		Size: 158.1 MB (158120300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357b0b3b0bf226f8c5b272711a57709fc9f51d6648c9bacab24840cdb806ab4f`  
		Last Modified: Sat, 19 Sep 2026 01:17:10 GMT  
		Size: 82.6 MB (82566868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57cd5b774148d711ff88274c62a1383cfba9e9d04d1369e9c8590ab52cb15a2`  
		Last Modified: Sat, 19 Sep 2026 01:17:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7b5375ce29a50502661696a1c7502e39a223f0f9de21cd6555eff590b9447a`  
		Last Modified: Sat, 19 Sep 2026 01:17:06 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e21f899a55c3d16314cd71372de42472935356fa2e20a801abdc7911a60bd533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3918002e4e5ce81244d8f85d28c3c19a95948774b6fb5a16d3e71986ebcfb4`

```dockerfile
```

-	Layers:
	-	`sha256:7dd0cf1084a127b5ed6006093aa55a529271e3071cd316189505e3db78843faa`  
		Last Modified: Sat, 19 Sep 2026 01:17:07 GMT  
		Size: 7.5 MB (7480664 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9a8ef4a532c3f261a015a4281580ee27773ed0c87f63f0c36c7fbc064875be6`  
		Last Modified: Sat, 19 Sep 2026 01:17:06 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:48a01de82cd0fdd4601f03a6047f0bc05f68a2cdacd8d91e257992c830a7f013
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288541163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:186170be828bceed7f98281916ee83d75e14fa0e700663e54e0d28e2676a7231`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:23:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:23:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:23:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:23:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:23:30 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:23:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:23:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:23:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:23:47 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:23:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61890af0ffae9489144c69f6c05d5b8e8efef05fbd66df8947ed0eae878da672`  
		Last Modified: Sat, 19 Sep 2026 01:24:13 GMT  
		Size: 156.4 MB (156401946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd57f11312b4c90042da65e74e0804d313bd73508e1a098b1edee54f314be7e`  
		Last Modified: Sat, 19 Sep 2026 01:24:12 GMT  
		Size: 82.4 MB (82389342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58b35b21b75d9e59f5eadfa94cc0ec0383d2a8fea2c278b50c58f63ae1460a`  
		Last Modified: Sat, 19 Sep 2026 01:24:08 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c73070332fc66243ea9de6b3b753de4818a51ada066084fbe32c22f80f6aafd`  
		Last Modified: Sat, 19 Sep 2026 01:24:08 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4d772051530805ae99a5488458db07beb6d5593f0c035ec04d58d628fc007008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7503083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f4b31417404ee549213e45691b9b50f8daea0f99b1aa08e66ce976d3f72327`

```dockerfile
```

-	Layers:
	-	`sha256:0b18179005588a1391ade6c3ad09c55569f2034cb3e2d0b51f0e91e0a65fcddc`  
		Last Modified: Sat, 19 Sep 2026 01:24:08 GMT  
		Size: 7.5 MB (7487057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc25b5ffb7a426a00246e9cf2273634c869aa7ef8703a5058be7d199a7b1c629`  
		Last Modified: Sat, 19 Sep 2026 01:24:08 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:95470e1c151c0fb77ca315605752ccb595776adf50f3d3d2278261d984da5bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299461631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836f26e2266fa652643ab49fcca5464e967065bebff0a0c366f87f013f9ae561`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:06:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:06:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:06:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:06:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:06:23 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:13:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:13:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:13:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:13:35 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:13:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6eb4a3d87f0293c946026fcba3cec01f100ef9faf9910f5717bc56e7b5117b`  
		Last Modified: Sat, 19 Sep 2026 08:10:43 GMT  
		Size: 158.3 MB (158274928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768ebcebdffee6f63f71200c7507f3b9de428b2102b48da53dd9f1b88cc3be00`  
		Last Modified: Sat, 19 Sep 2026 08:14:16 GMT  
		Size: 88.0 MB (87990589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:353ee2dbae573d03a8a4a94ab40c3985092302a714467b26c2dafe29da2df0d0`  
		Last Modified: Sat, 19 Sep 2026 08:14:14 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da3845aa751882fcf6fdaab7817c25ca052cf984dd6135c29e6d68b1b12bc04`  
		Last Modified: Sat, 19 Sep 2026 08:14:14 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f1c7ec9741e013b6a3a98e71bcca0174ef2ba0fa38a7d20b80e80749cbd87b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1872c24e28ad920448b42a3000d8dc6a071912ff89dbcf830645b8afb42f2acf`

```dockerfile
```

-	Layers:
	-	`sha256:3ebc72a8716b7b353e5f9cef47ab0bc4f4b4c83ae4aec69c558ac496858b50ab`  
		Last Modified: Sat, 19 Sep 2026 08:14:14 GMT  
		Size: 7.5 MB (7485083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:088031d1bc3dc183487516f89056af87b8df41ebda21a0268e6fe94aaa382810`  
		Last Modified: Sat, 19 Sep 2026 08:14:14 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
