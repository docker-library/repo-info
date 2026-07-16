## `clojure:temurin-21-bookworm-slim`

```console
$ docker pull clojure@sha256:29b6b3e99e954aef27c0377f041505ac1bd494f8e72d9148c2b73c241f7e0dd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-21-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c46e887605e66416020b232cd956a281cf51b08576dd04a58ead6c89aea302b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253048831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9590c58aef7d488a23f1889aa4f89ab79730cfcf22ef288006a2c10186603b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:33:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:39 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:33:39 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:33:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:33:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cd61f39e9546900b36732b4c12bf9e83669fe7c8f142ec3903dd3ae8127aa0`  
		Last Modified: Thu, 16 Jul 2026 01:34:16 GMT  
		Size: 158.2 MB (158166939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04e80ab27fb8b48ac3227eea4ddbf347b86b048bac3440a38bdc12bd803834f3`  
		Last Modified: Thu, 16 Jul 2026 01:34:15 GMT  
		Size: 66.6 MB (66648207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e63f0b1db1ef766524bcca7b53046615763238309a1b9714376aa49055a0c3`  
		Last Modified: Thu, 16 Jul 2026 01:34:12 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0567f1175d9d59e375f31610c6e5698b9ac2d14b01b9b44efd6ad975b53400`  
		Last Modified: Thu, 16 Jul 2026 01:34:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0afbea048e5113ffb061bb17b70b6b4ae37acd1be776476622ce9695c81f34c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5131877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0984e7505dd5bb4c599f0a868a989f86ede42b25549f298cc0de5716001f2a19`

```dockerfile
```

-	Layers:
	-	`sha256:c879bc2a6ed8b7dcd17bb76c818434847cac6535df2aba9feb8e19c4bda8fb2b`  
		Last Modified: Thu, 16 Jul 2026 01:34:13 GMT  
		Size: 5.1 MB (5115887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:983f2ee5bcd07500190e2146e3ad3e7192f10b52c3253a09308d6efc15a55361`  
		Last Modified: Thu, 16 Jul 2026 01:34:13 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f011f8b91243bd81190cb89761d429d1c6b89bdd573d7403a4c429d00d40ffb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251217601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb94658044856dcf2a9272874cca8488b44f89a56b833a977ff769eca58088`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:29:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:29:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:29:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:29:35 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:29:35 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:29:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:29:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:29:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:29:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:29:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:950159bf31bd3509043da6478c75a1927be7703f77e1e62533538e370092daa6`  
		Last Modified: Thu, 16 Jul 2026 01:30:20 GMT  
		Size: 156.5 MB (156461296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c7c412acd12bde9c55e31a5263b5241f758846efae10e0119e91cf2dd0a72d`  
		Last Modified: Thu, 16 Jul 2026 01:30:14 GMT  
		Size: 66.6 MB (66638008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a7f7790583f764d115284788e9c10a94559bf78721bbeb7c49ccd598ddd17b`  
		Last Modified: Thu, 16 Jul 2026 01:30:09 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3afa59d9989fefd2707100ad20b5cf4582190cad9fb122a7af01c11d889b86`  
		Last Modified: Thu, 16 Jul 2026 01:30:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8ff78cb053b88a98691d115a76101c8122f1c236f602bb31fd4a7f498ec100e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb2d55d367bf48aa09bdda9a78bd3244acc436be00feb1530e81e1807aec6bda`

```dockerfile
```

-	Layers:
	-	`sha256:a762ac1f073cb242f270642a1494da06c929399bf74ccc0bdbeba9e33ff16f19`  
		Last Modified: Thu, 16 Jul 2026 01:30:09 GMT  
		Size: 5.1 MB (5121648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e364bc3d2d14ce16a7b170a203cbbeefa63446daa5e6be3db93a87365f712637`  
		Last Modified: Thu, 16 Jul 2026 01:30:09 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:c27445d207718de3badecae90b1a8245cd1a3a82f6e7d38ec6273438112f5b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262898027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09be558a1c9c794fc67bc834c09a2440e1b1d1baf77b5d2a982d7ad34808c9aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:48:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:48:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:48:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:48:26 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 02:48:27 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:56:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 02:56:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 02:56:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:56:48 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:56:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c7687e3e503f67f28ed48874231824dfe0d502900eb690ce26123c0fce6c77`  
		Last Modified: Thu, 16 Jul 2026 02:51:42 GMT  
		Size: 158.3 MB (158343218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:452bc49ae1554c5744870d06f5cced2defbeab9bb6c14618098c3bca5d5fd815`  
		Last Modified: Thu, 16 Jul 2026 02:57:22 GMT  
		Size: 72.5 MB (72477354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5dcb440d8d86501bfa76258175bfd757c6f497edc7d076cf36eddd8d6b0216`  
		Last Modified: Thu, 16 Jul 2026 02:57:20 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907ecfe690ec37154e3907420aa152562e6bc2ef08e9bf3be7c8451c0e6de2b0`  
		Last Modified: Thu, 16 Jul 2026 02:57:20 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3b7ebe7dbfd159c77b72be58de3e19aba58219d6cad6d69d4303aec50b0371e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472a605e44d8d21ef9a44f6a7c9afa6125b1e4bbd06f93de328f60edad0027b4`

```dockerfile
```

-	Layers:
	-	`sha256:f8bce1b723c4079e4d04cebc1f067ed8fc878b070d8edda56ef12e98f161644d`  
		Last Modified: Thu, 16 Jul 2026 02:57:21 GMT  
		Size: 5.1 MB (5121045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4af3469d5ec164dd9c6e3c7eca13e295776d3306dcc7e902b4c09359e75aab78`  
		Last Modified: Thu, 16 Jul 2026 02:57:20 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:afaeab53a330b66e3099dd0e7c233d43c3e7277d11d5d7b5dca2ca73da747d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239726458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98db4c0f9ecdec44fe2755af9b6cdbad5f6d0b751c74243636140ddf2a7053dc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:49:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:49:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:49:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:49:53 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:49:53 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:52:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:52:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:52:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:52:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:52:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b4c27e82c72f992785147ec97b6bf3311a62d3ce2457dae43b8f0ad210e8e7`  
		Last Modified: Thu, 16 Jul 2026 01:51:45 GMT  
		Size: 147.4 MB (147388352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d815f78deade83814c21b5022c8beb449621d636b7db5de2d45fbc5fb4ebdc18`  
		Last Modified: Thu, 16 Jul 2026 01:52:46 GMT  
		Size: 65.4 MB (65448800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c3eda43490ed17703b1f55aa2b4478495e5a43873fe0a0c7ff0b9ca40571794`  
		Last Modified: Thu, 16 Jul 2026 01:52:45 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c93bb6587b31878f4deb0c86fde181803d7096f26b0e5e73c76c8ff57288b1`  
		Last Modified: Thu, 16 Jul 2026 01:52:45 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:99facff07e9c54ffb1e2f1af5f60dff33aaa49f94049b5956646936f3ccddd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3096cca630bdb60164d80fd2211448548db5b8be4b6a6ddb94dd88928431630c`

```dockerfile
```

-	Layers:
	-	`sha256:3b8ed7da5780c7fb8ab16c596e311f6d95234253011f3d2ae779351b9fdc6058`  
		Last Modified: Thu, 16 Jul 2026 01:52:45 GMT  
		Size: 5.1 MB (5107208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5609e185cb4042c1d0edffcda3173d582998606907dd55a73996a62618a7e084`  
		Last Modified: Thu, 16 Jul 2026 01:52:45 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
