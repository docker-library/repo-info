## `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:93f1d32427f65314299d506eac0334842c9aaa76c91e798f92d3bf2439c66674
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

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:91995caf9436a59996b78559abf8d0fbd1b4ae9ece32d1d2ebe453f188c7efcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253035818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8185eb618118ab4dea0abff9dc63b93da0c5207832d9c887f45e949716727f04`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:18:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:18:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:18:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:18:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:18:16 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:18:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:18:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:18:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:18:31 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:18:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3cf31480e041d93fe1504d0dcbe5b43162d4250f6ed5d3056404e2029a429d`  
		Last Modified: Fri, 21 Aug 2026 19:18:55 GMT  
		Size: 158.1 MB (158120290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe22d85dc9e3b9bdfff50c9ae72c080b9c740c11f9f40264c0f86f1a16f7ee73`  
		Last Modified: Fri, 21 Aug 2026 19:18:54 GMT  
		Size: 66.7 MB (66681896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72cfa7e5a514490f239de8a5ea5bec26f664e456bffde7b2445a72edae86ef83`  
		Last Modified: Fri, 21 Aug 2026 19:18:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c11e953aff3953ed8606a337202933a963c2b9aa4eb1f13eb0412fbdd91118f`  
		Last Modified: Fri, 21 Aug 2026 19:18:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3b6e9cc09c03c1f60af1c5b8c146762b5170bfd823b655ad8d3d475042548d1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f712b5194d0bf172d682979884f733fe128e24b8e1d8649c18a74f54528e91bf`

```dockerfile
```

-	Layers:
	-	`sha256:8d3edfc555308cd7d2e4666258a280e86741a021b8556ae6124e6a52011679bd`  
		Last Modified: Fri, 21 Aug 2026 19:18:51 GMT  
		Size: 5.1 MB (5121088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c54ff2d87e5032e143556789fb3a6d0b334e931aafaec97334e219eeaa6dae5`  
		Last Modified: Fri, 21 Aug 2026 19:18:51 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:263f4699b4f3c922caa237e7234f6af3a17292013012a1c5948f8e8d5c6dabc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251188669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf91731db4e08133505c38b64f7450f90a8044e6406cf3c044405d9b5dd4e050`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:06:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:06:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:06:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:06:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:06:28 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:06:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:06:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:06:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:06:42 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:06:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ba3852fceede50a686c3505f980d39f7a768613b96cbc032fe9dbc2438d67e`  
		Last Modified: Fri, 21 Aug 2026 19:07:05 GMT  
		Size: 156.4 MB (156401969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3efa3e56815a5d18a275bd45a08d98397afea53805658cabf1e3cedf8d128f97`  
		Last Modified: Fri, 21 Aug 2026 19:07:03 GMT  
		Size: 66.7 MB (66668456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46390bd9f03fb4e40cd6228d75eda4add4f3cafef5434e95fd5cb55bda9da1a`  
		Last Modified: Fri, 21 Aug 2026 19:07:01 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f7115c1ed45da6c00aa996ac25cf1f77d22b6e6493f0df6c4c499fbbe19c8b`  
		Last Modified: Fri, 21 Aug 2026 19:07:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6e96e9c4994990f20f7aa7bd19c19839943ef48c4f4cb14fe6e61751e185b2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0da89eacf522f04c3b59e1ae885afbaa15610063cdbc3941a1d75af66744fc5`

```dockerfile
```

-	Layers:
	-	`sha256:766558078e07e72af709b4489392053e0fa1069cf5ee19dd93fdb25a7740d55d`  
		Last Modified: Fri, 21 Aug 2026 19:07:01 GMT  
		Size: 5.1 MB (5126849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a48b6f84c607e1d5d20a915b07c9f28e0fc1f40f448c75df443cdfbd6fd3bd3f`  
		Last Modified: Fri, 21 Aug 2026 19:07:01 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4e6296d8ded68c9a814aea1888fa32a28cd3582dd5ad051fcc04cf65f3ba8135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262917670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8f342d9e684c11d82b8e083b4c11b1f739384266982b059c190597876ead83`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:17:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:17:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:17:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:17:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:17:33 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:27:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:27:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:27:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:27:16 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:27:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33231955abebd911acb94c97eaa8b1b7cb3d3dce6e1a5ac55025e33ee20a69a`  
		Last Modified: Thu, 20 Aug 2026 01:21:00 GMT  
		Size: 158.3 MB (158343275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeda3ed9b6d89f42d5b5670b7a475b8e1557b0f081695a25b09bd429487d0fb`  
		Last Modified: Thu, 20 Aug 2026 01:27:49 GMT  
		Size: 72.5 MB (72497028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d646775a00778c49a3e151311ac888cb7f040bb5da0667096a80f64fe2ad7db0`  
		Last Modified: Thu, 20 Aug 2026 01:27:46 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca4d12f68b38d7f58fcf6246ab5141d933c2bdf72ffc1b8c8770e5091db4284`  
		Last Modified: Thu, 20 Aug 2026 01:27:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4896d74db447ad90c2a4b5f70a4a8e02f1ccc19797a85194cdb7120cbea11ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2908a2352bb11e6a21e596d50315201f663ecb24db3e8bf5626221f89d7174`

```dockerfile
```

-	Layers:
	-	`sha256:5a96a67b4d229b10a8f5c1ca802f35fce89e36f94ce5cf5bf3e7a050646d1946`  
		Last Modified: Thu, 20 Aug 2026 01:27:47 GMT  
		Size: 5.1 MB (5126248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6e1eaac7821cc12c0340a8b42e5aa640066b9369e88011b12bc6ae1a27372ba`  
		Last Modified: Thu, 20 Aug 2026 01:27:46 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:bea0bdaa3eeaac827767420e7a45b887fd189a19fd7237af97c36cb285b165f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239733773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c59ae79b9d6a610894ce2f2d3cd4220bb95acb9a71547fb73cfd16a015cf82c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:57:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:57:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:57:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:57:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:57:24 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:59:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:59:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a3f24365b2b7be6a120bb31ebefba7be7e45fc966d4300ec3976b14e69bc0e`  
		Last Modified: Tue, 04 Aug 2026 02:59:01 GMT  
		Size: 147.4 MB (147388360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a15bd6f07fdb3ba83d9a51843fa57b79a0a9088070520ebc02a2e33d6b967ec`  
		Last Modified: Tue, 04 Aug 2026 03:00:02 GMT  
		Size: 65.5 MB (65456103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988279db3429747ad139e59575fcafcd1227f6c1949e1320eade1ccfd6caec87`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7a30479c2266a53cb27254d284a348210f74bd6e0744259721361509088386`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a011935ba5e24e36bd93cb4bc73d3e536b1fcc98fe0f80187bde200a4f87392e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8dd7963de63143409ab30412fa7e262c7694bc95525ea17333ae4095b15549b`

```dockerfile
```

-	Layers:
	-	`sha256:966453330ea9c4b6fa04d144340f93b2365a0e466e147e3e02537f9b57b299cb`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 5.1 MB (5107208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82b0214fb7070cf389be398ee71bf7350401e7560a7c2f79344130190513066e`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
