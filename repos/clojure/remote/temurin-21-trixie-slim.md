## `clojure:temurin-21-trixie-slim`

```console
$ docker pull clojure@sha256:8bc59322cf754f81183867a827d7e671986f647798f8b1fb3fc89eb60d0357d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bef539bbe882de52f598b6a2ded847234a3ca2b4e9e18e59242403043be9f042
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259905168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95275694c325f4c090d6480b68df7755fdc2692e844a9c0b189de52387d6c798`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:47:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:47:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:47:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:47:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:47:57 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:48:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:48:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:48:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:48:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:48:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b396060a491fb14e4f62ec021300e72639efccb4bb116b290b2bf9a8e6be8693`  
		Last Modified: Fri, 02 Oct 2026 02:48:37 GMT  
		Size: 158.1 MB (158117526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0e917fafe64fef761a1a48d519f6b1c1f72704a75a925025c61edb1011d1f6`  
		Last Modified: Fri, 02 Oct 2026 02:48:36 GMT  
		Size: 72.0 MB (71956182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ffcc87d40cdd8c2be11e7a77acf9078059c8060db405d59b2fa6fad84eda7f`  
		Last Modified: Fri, 02 Oct 2026 02:48:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba21a5e8d594ce2931306c9c1afcbb985231b0029da4a61210bbf2cf5f75a1b`  
		Last Modified: Fri, 02 Oct 2026 02:48:33 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c7f274e6b861750dbcf81c3d44a7379e90e7e275ba14dea0c71cdcb6f2157c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc82c92621a82c7bb13eea242b9cab540d248bcd61820f27ce5cdfda2ed51cc9`

```dockerfile
```

-	Layers:
	-	`sha256:d68acf1e3c10d2e81a27f4f3d27fae09a7e71a0c232021f78b5908074c958138`  
		Last Modified: Fri, 02 Oct 2026 02:48:33 GMT  
		Size: 5.3 MB (5265166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:296eb76a9208b3c647cf55f787bcf1aae482fb58850d9638428bea5fb59b3954`  
		Last Modified: Fri, 02 Oct 2026 02:48:32 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:91d2476add842fe681712c0b0f1a05bb26b736f86473f67a6b2fa79dcaa98cce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258729908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01a9e46d8d339448288ead67a184afc770e169e7c2a3a5770d10ede89bdcfc8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:47:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:47:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:47:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:47:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:47:52 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:48:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:48:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:48:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:48:09 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:48:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afce76ca96cdc3be0ac114054225b6cf9f0b539c1f7f4a08a4af9d04bf27b488`  
		Last Modified: Fri, 02 Oct 2026 02:48:31 GMT  
		Size: 156.4 MB (156400687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de89f443987823a8975c548f4861564b58aa91d266712149a714ec4732ef7491`  
		Last Modified: Fri, 02 Oct 2026 02:48:30 GMT  
		Size: 72.1 MB (72138490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880c1d51f70ee833dfc47974d1d81cad24f92575f9ae1728db3a564fd7a1396b`  
		Last Modified: Fri, 02 Oct 2026 02:48:27 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc249e236a4218828051cc78d635c6b7575a195e4bcc7baf810f912f2ebf7ddf`  
		Last Modified: Fri, 02 Oct 2026 02:48:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f93c4e3d7376fd5939d327de435d2d26c2b34d4413586660f4257e90a83f41d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae18808274a41e841f92a012eff637917a2e2a1745df7fdfaf0296e1b783164a`

```dockerfile
```

-	Layers:
	-	`sha256:17f5daf57140c505536e18aa08138c85de953f579cb35351ed099bba824d1918`  
		Last Modified: Fri, 02 Oct 2026 02:48:28 GMT  
		Size: 5.3 MB (5270927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdfe774946b8b72bafd7b0094dbaab5fe935b77b57485146a8581f949438cb0c`  
		Last Modified: Fri, 02 Oct 2026 02:48:27 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3680a3caa1759ef666a6f7da8ea546d70b539895f1214484a98cf639ad88b1d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266336839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cced321620b4da0c3792046013b1d3c197d5e9cfbf5ebb67ab7b2f04d021f425`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:06:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:06:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:06:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:06:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:06:09 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:16:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:16:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:16:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:16:59 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:16:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e80e42dd4544a6b2f73308001cd4d61ab6a8019481027bf956fc7bca392051c`  
		Last Modified: Sat, 26 Sep 2026 05:09:08 GMT  
		Size: 158.3 MB (158282664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc8ba0553ac748a4060be6415b83385ced6900977986d7708de1fa6aee3c19c`  
		Last Modified: Sat, 26 Sep 2026 05:17:34 GMT  
		Size: 74.4 MB (74411897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa67a1736cf1293fc2bff051c735e9e851d9cd13a3f33d2dee1d798cf1fe24d`  
		Last Modified: Sat, 26 Sep 2026 05:17:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c0e7cc2c1406ad2f8718555fbf3b7453bfd41eb4e3ed29a13cb142a4680a269`  
		Last Modified: Sat, 26 Sep 2026 05:17:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e1d42f987374d3180422664c742b63fbdb4aefb00bff943548ca7e750ec16ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15c075b236b0eb1fa1a2e34c9ce4e2464b3b04f46ef57cd30b9ba4307246a39`

```dockerfile
```

-	Layers:
	-	`sha256:3b64b77932dc880cbdfcfb55f5c1a87a69fc915f9d8f6b5e7dd83842a19520f5`  
		Last Modified: Sat, 26 Sep 2026 05:17:32 GMT  
		Size: 5.3 MB (5269537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ece26927b2f0f85ffa1825c7b778a625b41156ca2cdb0831d419cf86b248fc8c`  
		Last Modified: Sat, 26 Sep 2026 05:17:31 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
