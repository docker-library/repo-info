## `clojure:temurin-17-tools-deps-trixie`

```console
$ docker pull clojure@sha256:6409fc96aa5aa935fcf23cd854cab30b3b2c5f1b0fdb66756372cd7c6f1954ca
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

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:be74005ecd72981d8037db937fe493d94e57a9b681dc556f3d2f049ff4fd0eb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290084728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5d34498981aa9b5f31152997b2d756385afc49c150afef556fa886ddbc79aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 08:05:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 08:05:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 08:05:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:05:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 08:05:03 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 08:14:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 08:14:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 08:14:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 08:14:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 08:14:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37297aa2fe16576090d9bdcf300b9f1b566eafa697618e22f15a26b8c6dc3807`  
		Last Modified: Fri, 02 Oct 2026 08:09:53 GMT  
		Size: 145.7 MB (145671490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40daee010ad575fdd7c1d2921df2f4910fddf57bc32e5778655c8f2bf12603f0`  
		Last Modified: Fri, 02 Oct 2026 08:14:57 GMT  
		Size: 91.2 MB (91217121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d70a186a5502553e503233878a3fda2c95da2619930716e6ab1cd102494a22f4`  
		Last Modified: Fri, 02 Oct 2026 08:14:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e49bbce70435a5054a7836fe9fac318adf429349c3d98c6e6ffec1d2cd37659`  
		Last Modified: Fri, 02 Oct 2026 08:14:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d14d0f42b9575b4c14db607222266b5119714afd3ca0e7a81f7b18ca41a6c693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bfb030ed9a877d920db98d5cc47a3681a0621dd0fa8a3ad3aac78d9fbdfe5e8`

```dockerfile
```

-	Layers:
	-	`sha256:779e893b837a3ee974934776b5fe386dcad4d83b6aff934f5d7458a269d91775`  
		Last Modified: Fri, 02 Oct 2026 08:14:55 GMT  
		Size: 7.5 MB (7483239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3a0904cb7dc3d9395d16a2502bc27f60dbcf98ef40252bc57c855da4319203f`  
		Last Modified: Fri, 02 Oct 2026 08:14:54 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json
