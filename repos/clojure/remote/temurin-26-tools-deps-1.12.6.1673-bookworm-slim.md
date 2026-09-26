## `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:3d76174e673146c9422e74866edf6a145946ccf18f72417c5a9e53880293d6d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:214f610f93798a28812e65cc6e56b32d8ad74a01fac28e0cb594750fdf8b2d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189491042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:392ae6626acdef84f3e800c6ef2413d2f4538f133132b2e5cfb30cf9841a5453`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:26:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:26:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:26:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:26:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:26:17 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:26:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:26:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:26:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:26:31 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:26:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fabf285fbb115d96594879a2f64fb6a52cae694ef905523d4c4d9f9712226b8a`  
		Last Modified: Fri, 25 Sep 2026 23:26:52 GMT  
		Size: 94.6 MB (94563480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40adc6db35f85c43531e29e034b133ccbb3c0caf1a9381e5f9e363fa68015256`  
		Last Modified: Fri, 25 Sep 2026 23:26:51 GMT  
		Size: 66.7 MB (66688077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91a7d30e7d219153594047b1ba0b1ed74d5900b35332faf584bb09108b2e64e`  
		Last Modified: Fri, 25 Sep 2026 23:26:49 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbf4d4b5781d492df71fa1ccab07d9c16d487527808308841c0d0f3619f96cc`  
		Last Modified: Fri, 25 Sep 2026 23:26:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:429133a73667355e74dc4c221b13c8eebe38007bba55fdf0445f9e0b5c3632f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c563fedcc379ef51b3c1288dd30e3a236c8e84855a8a46cf472b8612b6dae475`

```dockerfile
```

-	Layers:
	-	`sha256:fe8e4ace01c5e8c01032e98e6659a96b9bced4f97bb8342d05fa67f669985b7a`  
		Last Modified: Fri, 25 Sep 2026 23:26:49 GMT  
		Size: 5.1 MB (5084201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58ec493de1188eae667f5677c76903f89df2e0439ff887b79e98abe9e8b51880`  
		Last Modified: Fri, 25 Sep 2026 23:26:48 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8ec1f12971703cf072c31ff20255034e117830a3655c917869a61733d3944ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188350006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116165e70ef822df967ef08cba9be0a2a5a12c1a37036012dd9baea66241dd5f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:23:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:23:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:23:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:23:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:23:51 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:24:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:24:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0083616ed220413070fe762d1236cfd72e9756774e66ac410f65bf062440822f`  
		Last Modified: Fri, 25 Sep 2026 23:24:27 GMT  
		Size: 93.5 MB (93543595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bd7c34edd9f4a8f168d17c628a317ee6cd02aff12c44147fd5dfe7afcb88be`  
		Last Modified: Fri, 25 Sep 2026 23:24:27 GMT  
		Size: 66.7 MB (66681688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8c05a9220114150c2b9f04f0d1ee398d1ad5a34303770dcfd003be86310db8`  
		Last Modified: Fri, 25 Sep 2026 23:24:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57e0628a98c0c18b25cf36ec85c2e9c4e8067bd8b5c3871bc21a6b3db0977dc`  
		Last Modified: Fri, 25 Sep 2026 23:24:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0fccc3cbe633603c29f4df6bd5aa3889ef8081de9967757232070ef0789b33c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5106060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e504614ea981284c5a34eeb0b9d84f917b8d613bf1a2eb47615bcd15fd3c2898`

```dockerfile
```

-	Layers:
	-	`sha256:f41edae8eedc77873d9c18877586ef318d19e10e373f7039d61b8d1863510c48`  
		Last Modified: Fri, 25 Sep 2026 23:24:24 GMT  
		Size: 5.1 MB (5089959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c01637311bba6ebb1301c16575a08a8577470f3e559c6820a892e1ff4d27bc9`  
		Last Modified: Fri, 25 Sep 2026 23:24:24 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:66dfd0368956adae448cf2b75a33dc66bc0d2a0b1aee0ac347a0c6a947a69c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197933356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe8f68c217ca057e5329d6e6c50a87ba09e9e8af8ac75c425fa9c5757b227e4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 05:42:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:42:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:42:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:42:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:42:28 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:55:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:55:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:55:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:55:29 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:55:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78aba62c87ef2fa4ecb84e96b86f5c61e0c65fe1b2c3012725f0a490280614c`  
		Last Modified: Sat, 26 Sep 2026 05:45:17 GMT  
		Size: 93.4 MB (93350859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3db4ab59535acf83c6333e7969746f3c215465cf500a2c5b3f89ccb44cb9a3c`  
		Last Modified: Sat, 26 Sep 2026 05:56:02 GMT  
		Size: 72.5 MB (72497890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b66cfdaaf9beeb5585668358bdd1c72c7215856b904fc46e4da55d975418ce`  
		Last Modified: Sat, 26 Sep 2026 05:56:00 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f18ce0c99abf84afc48d6b059d2fa185b9c27d1f7d0b1272054b91407a3a121`  
		Last Modified: Sat, 26 Sep 2026 05:56:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:58e944426c400aefb45348375336b5432695bbf8abe6c3d7eca537641e8da39d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efd25713b7176a3dba50469bce5930e193f9450985509880ac2d3cd6547a1e11`

```dockerfile
```

-	Layers:
	-	`sha256:7d3d93d4fb1fb98f6bf87ff2a2d37c7765dd13bef213f477a9db877c172a26b1`  
		Last Modified: Sat, 26 Sep 2026 05:56:01 GMT  
		Size: 5.1 MB (5073295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39f360748bbcd93348894d02f5c3541848704db8079787b06073283fa2cd10d2`  
		Last Modified: Sat, 26 Sep 2026 05:56:00 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
