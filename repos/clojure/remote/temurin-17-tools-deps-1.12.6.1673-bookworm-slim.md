## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:1d4d9cb79dbd14b2d701061c2caca63e3656cc640eb535d5e38f600e3eaa8668
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4f3495126c2899bec4dd739f9316ebeb21270117ae78f095c877df80481cb682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240843375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d5aca1dd4ff67088cc78f102d821ca343c22c61644a38d9b1be57bf0cdf6cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:08:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:08:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:08:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:08:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:08:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:08:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:08:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f8cc0b2069a6228cd91abbe7f54c966799c974b34e821b3480fe62a0021cf4`  
		Last Modified: Thu, 05 Nov 2026 08:09:21 GMT  
		Size: 146.1 MB (146086189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00623777cc8746752de38ac5ae61974a20ef53cce5c13cbfdbae4029bb96bdd`  
		Last Modified: Thu, 05 Nov 2026 08:09:19 GMT  
		Size: 66.5 MB (66508159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:352f18bb5c17cec33d8411ec8b813ef19c2850945cd059a6f11c39888373c3ad`  
		Last Modified: Thu, 05 Nov 2026 08:09:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42971673854bb95d94972e34990f9e4ab03c39127d8ef3304029ee8c5dd5c3bb`  
		Last Modified: Thu, 05 Nov 2026 08:09:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bb6182b2be7e9637ec7861f2d3f29b8b75f6a4aaca166c0fe674b240adfbc81d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b555896e40714bf780f04a38d6139e1727a2174c45c15488c5f73cb8a2031d85`

```dockerfile
```

-	Layers:
	-	`sha256:540dff40c2cae109a0a52df4ecb45b937ebbe0380bec3348b42f19f61c06f6ae`  
		Last Modified: Thu, 05 Nov 2026 08:09:17 GMT  
		Size: 5.1 MB (5118105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:831839360083fe693151e46d896124a2425b08d7a1ceec6fc84a2deda8b73bc5`  
		Last Modified: Thu, 05 Nov 2026 08:09:16 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f37b58b1eb51a635d735df3d38181b1343985008d799af6edc081bcbb3c3f083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239602798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8d569160735cec1d86e7568efca840283deb6f42e03735d29eca11a954c748`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:17:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:17:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:17:44 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:17:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:17:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:17:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:17:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:17:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a7b463a11d6d8ea1a315d42f58d2295097f935e8a3523ff3db3271e9e4f76e`  
		Last Modified: Thu, 05 Nov 2026 08:18:20 GMT  
		Size: 145.0 MB (144957161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55abdf736c61ad7adb7333573621fd7d82f8b48ef4a5c98f7f9a940b139a7b8`  
		Last Modified: Thu, 05 Nov 2026 08:18:19 GMT  
		Size: 66.5 MB (66500235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fcd7461e529d522eee5ad94c7d59362de04189146c5e823f2fd6db9302eb0b`  
		Last Modified: Thu, 05 Nov 2026 08:18:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4330e7e4f3d03daad87718ac11340caada848fc1f653f753b16eeeac7373b7fb`  
		Last Modified: Thu, 05 Nov 2026 08:18:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:97420b40b056f5d1dbc70afd000cd2cd328f9c187f0c5a8e353bbc903b075cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4156ff0000dc5417123415909c607e4aa57706b881fa92ec9a846b6049e4a5c4`

```dockerfile
```

-	Layers:
	-	`sha256:63cafb43edcc474bf1bdf92a2e9b67cbc6633842d392350d630ab8b0315ec55e`  
		Last Modified: Thu, 05 Nov 2026 08:18:17 GMT  
		Size: 5.1 MB (5123866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfa466f080bc27b8a200ba23e1d16e2d802f11b72a61cb8a4057c11c3aea4d7e`  
		Last Modified: Thu, 05 Nov 2026 08:18:16 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9012d817c5e2ceb9dbd7badaa6f9378b6c1f1dea040ac4779c9b946d744fc2d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249288207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:031f2268ec7639adcd591e0250a49e2166d34085b1aaecd06b1767c6fb70a653`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Tue, 03 Nov 2026 22:33:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:33:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:33:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:33:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 03 Nov 2026 22:33:32 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:47:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 03 Nov 2026 22:47:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 03 Nov 2026 22:48:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:48:00 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:48:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b0ef70b2874f7493a9488f8c19903ddf56212078c26b3694e1aaa3cf5a1404`  
		Last Modified: Tue, 03 Nov 2026 22:37:38 GMT  
		Size: 144.9 MB (144860490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd436a03e08360b2c1a6bfd9dc62d99372fd9a2b5cd7c1cf13bed0d43a53fdc4`  
		Last Modified: Tue, 03 Nov 2026 22:48:37 GMT  
		Size: 72.3 MB (72333833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317833b23f2af4b1f1562d4c23980c4b1b753e6297784bfd4b56d9cb7a4a7cff`  
		Last Modified: Tue, 03 Nov 2026 22:48:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a0035a0862775b977b8649178c90ae2cf94df9850a8166dc90611fb9497e3d`  
		Last Modified: Tue, 03 Nov 2026 22:48:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5e2d7c268e19d8a966f69ad2675119d9b33d9569855f0796fde242c1c3659725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:292c7cb38e2845fbac7d2933f142af5d504570ee17e27dd5ae65bea1fc5cf9ac`

```dockerfile
```

-	Layers:
	-	`sha256:bb552eff4b9c6fe2a257c6684c761d7ef492ae85b0b1438d40cb177abc6789b4`  
		Last Modified: Tue, 03 Nov 2026 22:48:35 GMT  
		Size: 5.1 MB (5122017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45932c0ca842169f7ee8421feb807773f7d208d34afffafe079bcc3ae60cb72f`  
		Last Modified: Tue, 03 Nov 2026 22:48:34 GMT  
		Size: 16.0 KB (16037 bytes)  
		MIME: application/vnd.in-toto+json
