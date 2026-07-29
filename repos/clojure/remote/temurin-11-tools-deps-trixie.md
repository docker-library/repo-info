## `clojure:temurin-11-tools-deps-trixie`

```console
$ docker pull clojure@sha256:537852c932582811ee5653a20a7418428ae16c1cf2d44063e7912bbd19ce4eb5
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

### `clojure:temurin-11-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:3df7d46a83f58a6144d83a4c3c042a44461c5cf6f7d505608ba9927026793a84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277725588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2be9df2c3bc825624db3cda540f5747edf5a2e909b6d13b4c788680989436a9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:55:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:55:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:55:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:55:11 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:55:11 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:55:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:55:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:55:26 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fcd67382453bea86b0f9744db7da5d0b40e06dee59e86f71620bcfb96251539`  
		Last Modified: Wed, 29 Jul 2026 17:55:47 GMT  
		Size: 145.9 MB (145886185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfdf10695ccad8cac3e559b2593762da0a49f941a7f618ded03f79ca9a1a9db4`  
		Last Modified: Wed, 29 Jul 2026 17:55:45 GMT  
		Size: 82.5 MB (82526184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9f232c4c53d07fe5e88a1c36b65cc5a9e75c94f2888594216e7ae8116194bc`  
		Last Modified: Wed, 29 Jul 2026 17:55:42 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3a3be16a0032df8cfdf603694de1900abca6b3f2f1bdb4d70b277c533e2a5260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45483e94d5264238ad3506a39a296854fd8fe1bbf0f370ddd0643e58e42bdd11`

```dockerfile
```

-	Layers:
	-	`sha256:efc09cdafc741083566a088efdaf5f2d5c6182c4a4c7ccfd165560fa129cff70`  
		Last Modified: Wed, 29 Jul 2026 17:55:42 GMT  
		Size: 7.5 MB (7488377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:968299ee434fbd39af556d8a34c0967c460de533a8e01cfbf537acfbb1f6450b`  
		Last Modified: Wed, 29 Jul 2026 17:55:42 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7b59afbbc6c7320f84b445a0fa9f5e3a33ef2f61647ca62893831cb76fd35974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274605484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04646fc6d6c2e902867f5a1ee59841bc712cba12d6ba94722326a7786d450647`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:04:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:04 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:04:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:04:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:22 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26fcc4c6943b086b8700e3be1abe6981835bce08edda1257c8107f025ca4a79c`  
		Last Modified: Wed, 29 Jul 2026 18:04:41 GMT  
		Size: 142.6 MB (142582144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6833b72ec213eedff560156b0fd94cd8efdd49e31f25de7609324b39b14423ea`  
		Last Modified: Wed, 29 Jul 2026 18:04:44 GMT  
		Size: 82.3 MB (82348511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62efa4ed6532238daa1059faee952dabda09fc8b69c30c4f5663f90634f97692`  
		Last Modified: Wed, 29 Jul 2026 18:04:41 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:76bf6deed61bc83ed2bc7d1b93bc9746f7143a93c359451fcc4a1437861ef5ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7509845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6fcf6404f96eb3c959058cbb86cee2fcac4ca31e68ccc221ba6cf8c19f9faa3`

```dockerfile
```

-	Layers:
	-	`sha256:3560bd1438e832807e19cd27c86922b73104efd61044d779f6f607fd433482b7`  
		Last Modified: Wed, 29 Jul 2026 18:04:41 GMT  
		Size: 7.5 MB (7495388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb76d62a2ae9c4589088cca3f39779ba2503e5fa177e05c499851fa81f7c35de`  
		Last Modified: Wed, 29 Jul 2026 18:04:41 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:18676e10fa3a2c7b4176b69b92342ecf85181808fc9fbd991d45a4bd20bbdb45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274190830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35f56a3a2238664a767a67c457c257c4d0e13489113dbb8c16488d516e9e4fe0`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:58:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:58:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:58:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:58:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:58:56 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:59:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:59:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:59:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486081dce6f7ca991eb2b4780cfd9a45d19c7bc471cdbed44cbefb964d2661c7`  
		Last Modified: Wed, 29 Jul 2026 18:00:30 GMT  
		Size: 133.1 MB (133109881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46be0396e34041e465e1d98da3e232c3d9a72db7093de732b8a5a25bd9a320ca`  
		Last Modified: Wed, 29 Jul 2026 18:00:29 GMT  
		Size: 87.9 MB (87946291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01143dea2ca12c36b8222aea925b792c1ae6b4afec25ef1ba4a37a9e6fa267b5`  
		Last Modified: Wed, 29 Jul 2026 18:00:26 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:419420f1c6a2e6dfb03bb41570c708c6a4a7d704601455b698e0af07e4757444
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7506569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233b0c154b34129e0f2bb3bc3b7caf04b1c7dfc4c0a2b5f6d5de4127e1f45e8b`

```dockerfile
```

-	Layers:
	-	`sha256:10ea916bde6b502003e5ad5ffd235a704e7efa26e712f3512519932df0f31dd7`  
		Last Modified: Wed, 29 Jul 2026 18:00:26 GMT  
		Size: 7.5 MB (7492183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0152dd6c9e50e526264f18cf0ab2a1fae82d3644d834e8d327b5516505c6c08e`  
		Last Modified: Wed, 29 Jul 2026 18:00:25 GMT  
		Size: 14.4 KB (14386 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:142f7ef16f9f1a9e0b707c10342c89b47afca844cddfc4d8327007c3e115c4bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259546224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188b697cdb05b6b5119787a6d456265a057f56ab6bc78ae5d18ca7b50b95c165`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:18:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:18:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:18:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:18:09 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:18:09 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:18:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:18:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:18:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49254fc2a3e56c8518be4dec50ce4e287b9bf61ee9522c945140a6087eeeb40`  
		Last Modified: Wed, 29 Jul 2026 18:19:06 GMT  
		Size: 126.7 MB (126651677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22693b1c0354726b2875e19fb87417a4e88cf2aa15551b0bbc1a5e57dbf0bae`  
		Last Modified: Wed, 29 Jul 2026 18:19:06 GMT  
		Size: 83.5 MB (83512193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33d261e44f2560cfd9e06ba0f6b8fac6d7246f7b79531ae486d5c36d75f810e`  
		Last Modified: Wed, 29 Jul 2026 18:19:03 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4ac0375a027bf5001a21fefa9532657b156b6fd896efafc235593fa92f9929c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7498642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd95e55ef79d196cd424d1c10f62c56f240f6aa122ff37dd736442942e92f3f2`

```dockerfile
```

-	Layers:
	-	`sha256:81730cec9df924ca1786812332706d6c4ebb69e29facf4f36fc7d00f49c6d13c`  
		Last Modified: Wed, 29 Jul 2026 18:19:04 GMT  
		Size: 7.5 MB (7484303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96b5f51703534bf3e365bb9113bc756577f71627bf046df0c943a29c61ea3455`  
		Last Modified: Wed, 29 Jul 2026 18:19:04 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json
