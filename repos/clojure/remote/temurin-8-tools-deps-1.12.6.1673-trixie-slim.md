## `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:5d243fdc4bea80b908e949095595ebd500e8928941677e67980dc37608cb0607
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a109fcd9d71718f04c499a786ef5dd04fe7ffe96e3260f8534512553a835419e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.0 MB (156979414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4237ab041bf79676b504382a0d1ff5911abc7f04b731f21f7a3ebec402dc2ee5`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:43:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:43:31 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:43:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:43:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:43:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7259d7ecf8164b1b6ede5a2ed39b0098ea9683597a784e3fed2a163251fcfdc2`  
		Last Modified: Fri, 02 Oct 2026 02:44:05 GMT  
		Size: 55.2 MB (55192297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a45e71633850fe6c4dcb0250622619bf550eb52d59f4ecc8320a3d352c82981`  
		Last Modified: Fri, 02 Oct 2026 02:44:05 GMT  
		Size: 72.0 MB (71956055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0fab3f666461424a916cd62117d71b106fbd0f819143f16eaf37564df53580`  
		Last Modified: Fri, 02 Oct 2026 02:44:02 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8aaef1e72edb689e0ed76e8a63de376ed9c55f8035e114568b28b1e9da66e831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b3ee244f4cf85a9efc42255f323502d4255b30fb0510371e5faac94be90a30`

```dockerfile
```

-	Layers:
	-	`sha256:87f0a85bfeaaeeb244f989c482945f4696fae630932089a9449ebe855b8aaa60`  
		Last Modified: Fri, 02 Oct 2026 02:44:03 GMT  
		Size: 5.4 MB (5383668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:537c9fc317143d4ad03eb69b115aa0749638015c06a29ad31a86791b79fed9c8`  
		Last Modified: Fri, 02 Oct 2026 02:44:02 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1ee1ad09ac48f51abb6368924c607f6dcefe8bd826b972236c0acd8c8a574600
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156582848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9641960dc3466b14b274b898b44f360f958d6003b8e20c892a14be30711a0a2`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:43:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:43:12 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:43:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:43:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:43:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419966abf94d7045c9dbba062da62cf5ee37d62ea322f2f69969e3da765195af`  
		Last Modified: Fri, 02 Oct 2026 02:43:47 GMT  
		Size: 54.3 MB (54254289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e182c9b653e61bdd49e086cf9abd3b68859b060ecff0ddb6eb76fcd090462ef`  
		Last Modified: Fri, 02 Oct 2026 02:43:48 GMT  
		Size: 72.1 MB (72138222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b378d663a4d77923bd34c2d98c1657a34e657f56e3707340ff33c69ec0c3198`  
		Last Modified: Fri, 02 Oct 2026 02:43:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bc1f5ba0fe236ae0c87aacb29ee40b046b487a25c4c08b892d040ddb74ca26f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5404628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:083fe8b3ab3595f18fb108f0cbad49cf2e75f7774f1389bdbcdcae68f8017436`

```dockerfile
```

-	Layers:
	-	`sha256:4cf1da6aefe350cf3d3f2542255e4bedb56370f6e2f1ecbafbfa253d73201ac2`  
		Last Modified: Fri, 02 Oct 2026 02:43:45 GMT  
		Size: 5.4 MB (5390129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bd074ec7ba9b03ff40ba65d66d5725476d4d32c74abb063c16574de991344f8`  
		Last Modified: Fri, 02 Oct 2026 02:43:45 GMT  
		Size: 14.5 KB (14499 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1df2d7dc37f4f582ce5a562cf4b7967447b3dc67db2b33a9b1570360b4a24a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160720681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e0cb8aba3f65a8195b2e963235c1f102fe6768df6bb820beb79fc3fb16ccdc7`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 03:51:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:51:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:51:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:51:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:51:35 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:52:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 03:52:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 03:52:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b3ecc14f58d8a398a1eb851850b529c1a08fbd1643818c5d8211c718dc660c0`  
		Last Modified: Sat, 26 Sep 2026 03:52:52 GMT  
		Size: 52.7 MB (52667114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a35c5a35de2582673517929ec7ad3d0287ce8b067858c8c4691b73fcc83d12e`  
		Last Modified: Sat, 26 Sep 2026 03:52:52 GMT  
		Size: 74.4 MB (74411688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6657ab40938a2383cb9700356d19d8d37fa515196e7c8684594e979d0167c0`  
		Last Modified: Sat, 26 Sep 2026 03:52:49 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b6225dda9c59f247a624ecf8d3489e5230bef9f71ad083f0ba18c8a9ec483eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d366c2d7935176b6f05e142e7fd597ae8024c8b7f46a44ce0f3998b13c8216ec`

```dockerfile
```

-	Layers:
	-	`sha256:64b3f0438ca6cb7bb64c7faeef53c5948bca6ebb8d59d2aa3e1e19ac5a0443d5`  
		Last Modified: Fri, 02 Oct 2026 07:36:38 GMT  
		Size: 5.4 MB (5388634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb8eefd64e75e81c05c3638824381421c8b98cf48c5e97c74144a44755b76032`  
		Last Modified: Fri, 02 Oct 2026 07:36:37 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
