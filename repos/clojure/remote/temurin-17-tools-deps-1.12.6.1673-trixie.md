## `clojure:temurin-17-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:6e696bb23a4d14b1e949d58641fe868e6dddc3554249d40e34df780280aca348
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
$ docker pull clojure@sha256:d9ac7b65943ff5e4789927ab8da3122985016d928365541cae5556df16729d98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278069858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3c87b506e50bcf8b9cf68fde741986ac00b1b374612c04ba74e80b5801d12ac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:39:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:39:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:39:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:39:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:39:36 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:39:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:39:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:39:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:39:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:39:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7490975d98f6954981162dddc8d6dbdf76e27bc8b5933dda45fd6b2dd154b0`  
		Last Modified: Tue, 10 Nov 2026 00:40:13 GMT  
		Size: 146.1 MB (146086148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b681297f5a8ffeab81f2bc4db59175b3d02d003ffa09931ad8d0b1b9fde24462`  
		Last Modified: Tue, 10 Nov 2026 00:40:12 GMT  
		Size: 82.6 MB (82569656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a219b63841a28d3dc94615f581eb9efa8a885f048b809637124b474689a736`  
		Last Modified: Tue, 10 Nov 2026 00:40:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0533a31822adda811e53ae50e0f152f8a64691e80396ea95c4016160208523`  
		Last Modified: Tue, 10 Nov 2026 00:40:09 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ec02daf9c5e3173c679ff09b3c6ad6f9d41e5e4dc857b38d83b7807360f3f73c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7492666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c5d3095b9a3800b51ecf9af4c572d501175fa6bff593ec3b57a4964bc4fe5f`

```dockerfile
```

-	Layers:
	-	`sha256:c4ce653e2a7b9cd76636d7349fd091764af547513d169828a6b6b206b5959e34`  
		Last Modified: Tue, 10 Nov 2026 00:40:09 GMT  
		Size: 7.5 MB (7476759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c79ab82273d676ee621b54bebbec4b621665c3b98abfd428807d0a00ff05268`  
		Last Modified: Tue, 10 Nov 2026 00:40:09 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b8909665739532ffe907e8e5286c4009406c244fa379ddfa0340c3c6dfa34c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277130070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e363e58c0fb07d85f4aa531c2ae905c20f0e518a17625324caf3be2a55f461ad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:38:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:38:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:38:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:38:27 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:38:27 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:38:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:38:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:38:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:38:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:38:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae9258c5fd585ac97e7a67b2ac6a462be36dbbd91186b632e3c422dd761e8b9`  
		Last Modified: Tue, 10 Nov 2026 00:39:09 GMT  
		Size: 145.0 MB (144957208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a736b72cf52332b12dd80ee76362a315f7e4b49d04eec4fa061aaf2a159c771`  
		Last Modified: Tue, 10 Nov 2026 00:39:08 GMT  
		Size: 82.4 MB (82392710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1b7a34f3e50367bf4b74ec5ba3d68e17a95a48ddcaca22149b7a394b3edbe4`  
		Last Modified: Tue, 10 Nov 2026 00:39:05 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6d90750ec6f45327e8a089a164cb8c75ea52619f3fad13c1e2c1cfc79a848c`  
		Last Modified: Tue, 10 Nov 2026 00:39:05 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:035f0a95b2488df7c08eb3ce0bf33c0ca5e5c8dfcd8acc66bd016564630618f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef322806a202dbee22fa9349347ae08774b53f35432efb11fa715d01960bd0d`

```dockerfile
```

-	Layers:
	-	`sha256:bb37800ea84c2654e44e987e2e6406f505341c24d04f2ad9b98a5b1e965b039d`  
		Last Modified: Tue, 10 Nov 2026 00:39:05 GMT  
		Size: 7.5 MB (7483152 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a181ea2cd676c3d8af4df0a602ad850728dc45e9cb1d8d4cd4358f2275700f0`  
		Last Modified: Tue, 10 Nov 2026 00:39:05 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:db248b4f09ed0b1763f246059fda7131523d2b69d37c6acd9790525f5d793afa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.1 MB (286084988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e6dde3e5dab9724b965ae3406b45f0ebe9d96fc1b9c6e72781058ad6a778f5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:45:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:45:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:45:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:45:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:45:26 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:46:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:46:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:34:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:34:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:34:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee03120020298d10b2a58fd447fa0b14563aea18a134ae0bb4b68b9840afc7f`  
		Last Modified: Thu, 05 Nov 2026 15:47:23 GMT  
		Size: 144.9 MB (144860486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:930858d28e7697f8e20f456b1baaab5cb33359aa6f476a8ac8342f424cbc0fae`  
		Last Modified: Thu, 05 Nov 2026 15:47:22 GMT  
		Size: 88.0 MB (87997369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6d198ae0f5cf63d76e3c313600ee54fb4fb0f1d6773e25c531ac57d1b691e8`  
		Last Modified: Thu, 05 Nov 2026 15:47:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617e6eb9b07a270ad91d1888a8e28af4bbfd2112520fb68a8e72206e1a002012`  
		Last Modified: Tue, 10 Nov 2026 02:34:59 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7f1e4756679480432f593ad057143265d208023988c539d7f2ead62892974315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62279d0b99a022e05434131f28e3396ae62a57d629a4e519bd7ceff683307024`

```dockerfile
```

-	Layers:
	-	`sha256:c145587ce3cde5621ca621ab5689793f8663f3c29260dc63b480d605348a8e9c`  
		Last Modified: Tue, 10 Nov 2026 02:35:00 GMT  
		Size: 7.5 MB (7479930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38e3e43db7529c288354f0c0f3c047591f514c6c87ac83215eaf5644326c7efe`  
		Last Modified: Tue, 10 Nov 2026 02:34:59 GMT  
		Size: 15.0 KB (15001 bytes)  
		MIME: application/vnd.in-toto+json
