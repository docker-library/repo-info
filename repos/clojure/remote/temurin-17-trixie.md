## `clojure:temurin-17-trixie`

```console
$ docker pull clojure@sha256:9009f3c12504c0f0f25b0230faae778eb75c449db4c533d6d67f544225a6116c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:f6723a32cbcc83c40d1449d5d88a58d63730489138d0fdc3a23fb6be3bb2d62d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277787467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524e8f1652f5e5c8bebd17420711033a7fd18bdd39af0a51c8f8d290389e63e6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:12:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:12:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:12:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:12:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:12:46 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:13:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:13:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:13:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:13:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:13:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5934b424566b85c312b68c1271c10c1fd4ed33b307e37cc52a50dd5f39665839`  
		Last Modified: Tue, 06 Oct 2026 02:13:28 GMT  
		Size: 145.8 MB (145825468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9d898d817cc9a379040b5a0210850ef65bf254d8faf47f4545a53b6b0e3e61`  
		Last Modified: Tue, 06 Oct 2026 02:13:27 GMT  
		Size: 82.6 MB (82567761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7901cc794df396942aaa63915c4da9a1f7a2ead1db94206f895087a2bfa700`  
		Last Modified: Tue, 06 Oct 2026 02:13:24 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340f717a3fc001830734b28faa2f54acba8d0d6e967eee44d43f01fe7f4a9866`  
		Last Modified: Tue, 06 Oct 2026 02:13:24 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e1a5a9a830c7e9ade3ee6474b84e47e2c127053ecbf60b8aabd3993e3a60b7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141511edb7f66a465764834183af2a7285a50331d92e738e11f9e4a6b5ba97b8`

```dockerfile
```

-	Layers:
	-	`sha256:823aa57cac89ddd1f706850f2402f3f22f4ded722bf72625e516b965f899112c`  
		Last Modified: Tue, 06 Oct 2026 02:13:24 GMT  
		Size: 7.5 MB (7478820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87478731a7b0cecbbc365d58dd6a097a8c11adbb3348cc048fee43d7052cdd95`  
		Last Modified: Tue, 06 Oct 2026 02:13:24 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ad516da800e13e1e8551d0c0f10c9047bc44a0b353dd9bc48fc4606af6f041d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276801360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b8f30a44b4fa758a6a680353629f0b853b62bdc97eb12f6e8736fa01c14b79`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:18:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:18:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:18:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:18:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:18:45 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:19:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:19:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:19:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:19:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:19:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab63eb592cc343ed1216b4e361039a7bc14d9df91b5875bd3c1b9a067510c4c8`  
		Last Modified: Tue, 06 Oct 2026 02:19:27 GMT  
		Size: 144.6 MB (144648267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6182c00c31aacba7dc9ff285b25874e7dd7dbd56493e954df01a4a86d412b05e`  
		Last Modified: Tue, 06 Oct 2026 02:19:25 GMT  
		Size: 82.4 MB (82390945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9806463a7f35656ce401e906688e4e292bd7a022e633e17ee4b104d18545a693`  
		Last Modified: Tue, 06 Oct 2026 02:19:22 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70305b66445ad7cc46e4d205e7bae0a2607dfaa899dfbbe347387051a1e4e77a`  
		Last Modified: Tue, 06 Oct 2026 02:19:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:258ab3a3fd19e1714d7b2952650c19402a601d07f9cfab99a5c79add3326ef68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3cf9997988f5605cae22c659f245cb88927804b1c8b2fd0192724aba6b3b999`

```dockerfile
```

-	Layers:
	-	`sha256:5d3e19a274baa6d765cf3ba325c1b238359fdc0328f3a0f547bfa70b1c399693`  
		Last Modified: Tue, 06 Oct 2026 02:19:22 GMT  
		Size: 7.5 MB (7485213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:502865e0185a7907409bf2f9a3d8bdbb66a05a51cd7bf91655aa00f5949c879c`  
		Last Modified: Tue, 06 Oct 2026 02:19:22 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0fb95a6918300c5bcd1833284f04a6fcd200e7780a488a11ab5a0a0150f96609
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286869008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b0add262222bd73bc6664629d0c3e6360f29a2b72c8b25685bc457f0e98247`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:05:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:05:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:05:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:05:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:05:57 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:16:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:16:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:16:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:16:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:16:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0f6933bd8bd26adacc595c8a148238e4b5f31352d2ec5037e049b8b2cfb52a`  
		Last Modified: Tue, 06 Oct 2026 10:11:45 GMT  
		Size: 145.7 MB (145671564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a68518ada091155b0b580031a0796900bdf48c252c1503ac305138fb2d5e9c5`  
		Last Modified: Tue, 06 Oct 2026 10:17:25 GMT  
		Size: 88.0 MB (87989277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02fe861e755a4ee156e4a438f4317a44895d966644a8d321605a851b6d92f7b`  
		Last Modified: Tue, 06 Oct 2026 10:17:23 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad710d0e4e1ea9700e0822597d75132b8dc7c83ab14f1cfec5867cbecf03a39a`  
		Last Modified: Tue, 06 Oct 2026 10:17:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bf8e36853565e9543344d1319030a493ada5a417a92422a8de591f6b84c33552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aa5ff933d9336f57a583dd23d869a0aa4693b7e56a2be92818eb296c7105107`

```dockerfile
```

-	Layers:
	-	`sha256:e97ae62bbaa5ea141d8316b3805ce310648cc6dae18db20ea25837f6c55a9509`  
		Last Modified: Tue, 06 Oct 2026 10:17:23 GMT  
		Size: 7.5 MB (7483239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fec5d6b0dbca1b819803f164050bd24c8838b179a73c831354d7d36b944f2523`  
		Last Modified: Tue, 06 Oct 2026 10:17:22 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
