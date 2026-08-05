## `clojure:tools-deps`

```console
$ docker pull clojure@sha256:35cf29b5b187adf44175337ea1657cd9561578b53d06c53b9d0e7c2e083dd82c
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

### `clojure:tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:c50576e2fcb26300d09dae1f3b5d3a7a1482334c5113ea7bcd3f6a17b0141aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219216641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d34b2985bbe3aed35b2cc834731e6f20af37843bb8e3e74c39bbaf49abfc0bc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:24:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:24:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:24:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:24:19 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:24:19 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:24:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:24:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:24:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:24:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2987f7bfa21bbd71ccae3ce67f365d4b561b3d5672e350f9bae5b06afaa701`  
		Last Modified: Wed, 05 Aug 2026 01:24:58 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f838aacc7a2043d261f883db236db053cf029e26ecada8bc89a82cfac09e0a`  
		Last Modified: Wed, 05 Aug 2026 01:24:57 GMT  
		Size: 78.1 MB (78143945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:775a3887b7bb7bc4565c21979ace2059f0d18f85fbce4bf8758cecec1f7cca87`  
		Last Modified: Wed, 05 Aug 2026 01:24:54 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976e44cbe0dfcbf029edebc9ce7e92667a31bccd403190ef7d623df8c0a0db5d`  
		Last Modified: Wed, 05 Aug 2026 01:24:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:fce58ab1e755aa36c8a690388ec959c9ca20bce69e6da3aef80a3ce61acd7c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7363489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eed433f85e6adb9876a7eba0dbdfe5725090369fc01c5afaf7665d60aa78e5e`

```dockerfile
```

-	Layers:
	-	`sha256:765d0824541bddbbf6d077d36934f9b7833e564e50f976e529b3351c47a2df2e`  
		Last Modified: Wed, 05 Aug 2026 01:24:55 GMT  
		Size: 7.3 MB (7345564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:804b342388886902c3f17d70673876fefb6d077b6d54150c8e4a5c8daa86f8cd`  
		Last Modified: Wed, 05 Aug 2026 01:24:54 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:394388e78b78fc48d385ca92d42df15501d48996a157f663c5c788a7d3bb86fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218055072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793366f69de3193160f2488ab55763a3bcd79611e100f29b0c6ddb358ff2c555`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:30:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:30:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:30:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:30:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:30:28 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:30:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:30:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:30:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:30:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:30:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdd2a0b98adedee532cfd55700776d6f8d28e4e9700e91770ed224987cdbea6`  
		Last Modified: Wed, 05 Aug 2026 01:31:07 GMT  
		Size: 91.5 MB (91542237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f894db87ee57de2c8d9e139997d2682ac0690ce04a7b3f048b3516d77a58ce`  
		Last Modified: Wed, 05 Aug 2026 01:31:06 GMT  
		Size: 78.1 MB (78128415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916cc72be27b1ba7b2330dc1fab692772cc32fea0d1ece30f26706117fd6984a`  
		Last Modified: Wed, 05 Aug 2026 01:31:04 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8ad0dc984d6eba8186a249a893a3f25b837693c6bbcf0520519155428fdc86`  
		Last Modified: Wed, 05 Aug 2026 01:31:04 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:515d8ba4085cfed664e4bd8f0a37a83a3bd07ee0b3478c54b5a2c2f3df6878b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7369511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a3b4e571c460029d85f47d17f7841d194593b0ca185ed08f554efb50595403`

```dockerfile
```

-	Layers:
	-	`sha256:dab8094886bde961214fada7a8e3ac70fd75daacb148e533e2c9dc1944b2dab0`  
		Last Modified: Wed, 05 Aug 2026 01:31:04 GMT  
		Size: 7.4 MB (7351396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1d5cfa7e2da78463b294831cabce02b6bfd39c3a65a89da577ad33b3cfccda5`  
		Last Modified: Wed, 05 Aug 2026 01:31:03 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:aa168677b12b64bd8f6ace6942dc47fc7ce3c02cea2a2f0c6b2d8af3745a7a33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.2 MB (228230324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11340d1ed8892c8fc2d504f9afe43319eecc5f07c83d565ab60416f5dfac35b5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:20:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:20:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:20:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:20:27 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:20:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:41:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:41:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:41:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:41:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:41:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49264167cb87dad9e24e124b14d9805f39b865f49947d09178cf7347263f11e`  
		Last Modified: Wed, 05 Aug 2026 03:24:12 GMT  
		Size: 91.9 MB (91914039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5646d2aaf39164b12bc8d0370c630b1d41b3637d7490226a50f6113e8b30998`  
		Last Modified: Wed, 05 Aug 2026 03:41:59 GMT  
		Size: 84.0 MB (83973769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0163b08d49e1a61128a373992b647189e3c954fbab5b5b99b88f27779d23889f`  
		Last Modified: Wed, 05 Aug 2026 03:41:56 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3030187d23b32cf51ab52616b0058756c8e541926068fdb998bd6f0e08895bd4`  
		Last Modified: Wed, 05 Aug 2026 03:41:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:2432769edbbb99e89c908a88a720d9802e1d0081d208c9c66bf2374389c8a0ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a79a190b2a31f22b2a3d75c106626acfe4218515e13106f81e8c2fbe7475fdd8`

```dockerfile
```

-	Layers:
	-	`sha256:312f56320c449fa18985fb4362df290ca2e81b7ddbe81e86c8a3c4d58b997b11`  
		Last Modified: Wed, 05 Aug 2026 03:41:57 GMT  
		Size: 7.3 MB (7334128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9211ca51831b3e30f1386dbff686d31a48ad76e2f729ad365b084c3f07ded6f`  
		Last Modified: Wed, 05 Aug 2026 03:41:56 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps` - linux; s390x

```console
$ docker pull clojure@sha256:f9d3b535243d0ee16847031847c19e4899582e4c3c6e711b0ac878bd36592051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212514659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aa7e792368441da2e8d542e2bc6d53aa0cfc3e7cfb6ec47bef2921f6fc0ca2c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:03:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:03:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:03:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e56f29808cdae0b0ae79a057631e06d5ee2175c9d7e6333974220725c749743`  
		Last Modified: Tue, 04 Aug 2026 03:03:10 GMT  
		Size: 88.4 MB (88420384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b25c221f4c7edbb89e565552871fb14ab7a518d9c601424eecd608881860a286`  
		Last Modified: Tue, 04 Aug 2026 03:04:12 GMT  
		Size: 76.9 MB (76935952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46b0c2a2840370faf5461d2d14f1fddc703ebda85f0ce2f5d8c1abef8162824`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ddc039332eb4fec26467a37ca7fe0761a8a5e049a6d94787a9c29b4c8a7504`  
		Last Modified: Tue, 04 Aug 2026 03:04:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:fb84fc442117f78175d6ad3c1329ba42df5b93d0c990cdc4c56cf9310471af77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7338417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181381876d20d723d44d1433eaa2e4012173d78b27da7c951e0fb3c1fcd2dd62`

```dockerfile
```

-	Layers:
	-	`sha256:91122bd04fed31a28dccbe6ac1d4689279205ad41b50864298fac5701878d151`  
		Last Modified: Tue, 04 Aug 2026 03:04:11 GMT  
		Size: 7.3 MB (7321445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ce8f334aac2e6eb3c2f35c9606bd554112380c92122972229c20ac34fa4344f`  
		Last Modified: Tue, 04 Aug 2026 03:04:10 GMT  
		Size: 17.0 KB (16972 bytes)  
		MIME: application/vnd.in-toto+json
