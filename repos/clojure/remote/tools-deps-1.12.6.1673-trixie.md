## `clojure:tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:05cda34fb49e59de522ae259c7dfc1507622420f3c02a8d3a695bfff54642651
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:2fa367f4afcc16b40b03cd5d563d4d338615cb7649014a3e0adfa9bc243ff713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227551516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecf2fad40c0a9f1fc9992e491a9a378083a676e14668868f7a6bdd87c2d5b931`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:48:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:48:50 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:49:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:49:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74625f717b0cda96b68cb5f87de69e60687bace133bcf1f00d3442415408a6b6`  
		Last Modified: Fri, 02 Oct 2026 02:49:30 GMT  
		Size: 92.6 MB (92618067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf118b130e7920dc37617a7212962c697f1cea2c744cd8b8563b39207364fdd`  
		Last Modified: Fri, 02 Oct 2026 02:49:30 GMT  
		Size: 85.6 MB (85552709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e4e0baf19d4fbc0cb0d07893e19ef7d366885a75f7f731d8d90662b31a1138`  
		Last Modified: Fri, 02 Oct 2026 02:49:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a47dccf8330c57d6f5ca14362ca7cf206ea106eac91a2ecec5b421b8d2a4904e`  
		Last Modified: Fri, 02 Oct 2026 02:49:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:804eb494b09404211650df899889317a22f091217edc16744548d9afda939c91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7463453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538c5c61d085217d5e3c22640ceb7ca422396cc8a76cff4f3d117458eb4cd7a0`

```dockerfile
```

-	Layers:
	-	`sha256:16e976e2a5cc6227d65db0e79f2a27998b33bf1f29eb2a4ea871fb6197c20568`  
		Last Modified: Fri, 02 Oct 2026 02:49:27 GMT  
		Size: 7.4 MB (7446884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:230a3e6550a119822961433e732e80d5fc8eba1e933f183f348d4bbe976daa62`  
		Last Modified: Fri, 02 Oct 2026 02:49:27 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:82d274919494f8ade41acbef216276009d99de1e19cca2b9e92f2186564d88c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (227013021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f3b63b70ad88ae87cd16305eb01d78a3efe5613b2fa905a1f60edf50e6e0898`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:48:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:48:45 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:49:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:49:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:03 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71dc9955a3c440f48286af93eb06a439eb2a9e38213b9de6e95bc31e671492d1`  
		Last Modified: Fri, 02 Oct 2026 02:49:26 GMT  
		Size: 91.5 MB (91528873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792c94ca3e6d31d7a328ba9871eb136e11ef536d79165e37cac1f7591f24ec5c`  
		Last Modified: Fri, 02 Oct 2026 02:49:26 GMT  
		Size: 85.7 MB (85734271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e1ba99b22ab2a2a8ba3e0e42b646f18dc7f56121ac913b7d370ec9728a99e1`  
		Last Modified: Fri, 02 Oct 2026 02:49:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7040252d0988c8620930ce9d4436a827c27f4600c31cd2c95d64086d6061732e`  
		Last Modified: Fri, 02 Oct 2026 02:49:22 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0fa2c646d569ded327b3125ac2f25401f5adf06840d60957cf4ede5b7c580e84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f312729d65c3d7aa0c79480d8aa3c6517b443512836da7c0a35b2fa1711ff1e`

```dockerfile
```

-	Layers:
	-	`sha256:beedd623f63c577609069b8c5b2b4a5ec20d02090844061c4e5cc12336a0d187`  
		Last Modified: Fri, 02 Oct 2026 02:49:23 GMT  
		Size: 7.5 MB (7453298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:651fc9a81b34a46a31a7d7c7effd6e26a558ce62dd7836cb76fb91e28c9507df`  
		Last Modified: Fri, 02 Oct 2026 02:49:22 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-trixie` - linux; ppc64le

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

### `clojure:tools-deps-1.12.6.1673-trixie` - unknown; unknown

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
