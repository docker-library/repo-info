## `clojure:temurin-21-bookworm-slim`

```console
$ docker pull clojure@sha256:9893936ece6f57c05a0b1b6e1145acadd5d6422170cbde1665903bf74298e52c
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
$ docker pull clojure@sha256:1cbcf97c872e36740a74d29b62809132ec8f72b34785a7132a82a10fdbd58276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253048312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f35bbb28920d2e75396cf6210fb83608d2c148e7502546c37f329fbb777060`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:52:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:54 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:52:54 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:53:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:53:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7345e545cb9a2c103b477b6343c43c95c3169ae59f684b092ab124180589c3b5`  
		Last Modified: Thu, 02 Jul 2026 05:53:30 GMT  
		Size: 158.2 MB (158166913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df70bcaf62f7356063c55be92223e9d734e1b0755ae15821830c6acf74c29d4`  
		Last Modified: Thu, 02 Jul 2026 05:53:29 GMT  
		Size: 66.6 MB (66642717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5353d01aed184c535fb8d977f7e1ba7f5f41be97902f790cfa08488bd1327560`  
		Last Modified: Thu, 02 Jul 2026 05:53:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f007f0bd0bb9285b1c9af367c5ad96ef9bd44e96946bd55ac33e2959a4e919f7`  
		Last Modified: Thu, 02 Jul 2026 05:53:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:af864c906fe4f70a16df53f51ee73a6e082fb76de1d3180dc37f11bc7c5821d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5131841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc74a75ca226f2d85cf4de5bdab482e246a76be4bc731558b5dd2a3d6501a61`

```dockerfile
```

-	Layers:
	-	`sha256:99d6751875e0ffc7ea7ffd46177bba23b2119beba0fe081ab37f8a4a5577f56b`  
		Last Modified: Thu, 02 Jul 2026 05:53:26 GMT  
		Size: 5.1 MB (5115851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f01d0f7d3084852f620180d8c15d3a61c2223c72d4d9f4598eae7da140a801f`  
		Last Modified: Thu, 02 Jul 2026 05:53:25 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a4ec03d5bfd6b2b4379e11ce8392b5b19afb81b8d8be25922ae999d160a099e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251228067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef00c453be610c28ad215252b10208ff4bada3a3b9b4901b21c8c564be19bc2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:53:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:53:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:53:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:53:06 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:53:06 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:53:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:53:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb1c69d90e279b0735fd0f0cfa0a25c68443d713a42bcc8589c82c56db1673e`  
		Last Modified: Thu, 02 Jul 2026 05:53:45 GMT  
		Size: 156.5 MB (156461308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08989be1953635670f59872c3fd3acb57f78774728b89e4e1aa1bec925af0c35`  
		Last Modified: Thu, 02 Jul 2026 05:53:43 GMT  
		Size: 66.6 MB (66643296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b268b0139a1469ef518f8bf8ab445318dee13fb46f06e8e4c0f2655085da52`  
		Last Modified: Thu, 02 Jul 2026 05:53:40 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2a731874bf898350c5ec08f35c4401f97765a26daa19564625b1aa01b38033`  
		Last Modified: Thu, 02 Jul 2026 05:53:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:09b528e837a643d1eb6157a75ce3d6c9bcd3d205cec04f9d646c3c0bb4a842aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f6a5d82673f7b7fa80ef6cc509cb5824262e61f9060a9669bd7ad3f48dbc89`

```dockerfile
```

-	Layers:
	-	`sha256:35e4b514223897e81783bef17a407c66ed9fa1ef71bfee6ae32f602ef629629b`  
		Last Modified: Thu, 02 Jul 2026 05:53:40 GMT  
		Size: 5.1 MB (5121612 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d402484ad96f724fe2dfeb5b5f23ccaff1731843a3010d50b8523e1e2a4d707`  
		Last Modified: Thu, 02 Jul 2026 05:53:39 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bdb2176a440ce82937a0a5c203cda1cebbd406c48d231f47df8bf0a46d04829c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262902386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28cedf923292932f9db5eb5dfa71ed8b59d72060763cc71071b8779f33f4bae7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:20:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:20:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:20:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:20:25 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:20:25 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:30:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:30:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:30:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:30:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:30:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b861214dad2496c9c76eb0b9e1e549b841c66aa96200b4bdf05f7b1514a0a985`  
		Last Modified: Thu, 02 Jul 2026 07:23:55 GMT  
		Size: 158.3 MB (158343255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33774e76bb30d7665e9a7541e0397d5d04937a9240274db85e121e599fe5e2c9`  
		Last Modified: Thu, 02 Jul 2026 07:31:26 GMT  
		Size: 72.5 MB (72476112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05784abbf636b964118ce9dcb77f26ee8131696e91150848242e99be998de5f`  
		Last Modified: Thu, 02 Jul 2026 07:31:24 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98806cf123e5643faa903e2ad5ea6887b39b08076ec2cdaa6046500775e742f4`  
		Last Modified: Thu, 02 Jul 2026 07:31:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b9e097e0bcacf32638a75da0172c8d7de5e753a5f1aaf2b792a4966c612f0f27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117b536a2c3ad389c5e5d90b949f9c5ab6758573a23c28eec90eb212a86a2ad0`

```dockerfile
```

-	Layers:
	-	`sha256:6dd0ce96b64198cda17f6011ff945b96221bf8c29340c88ad07829768198ec99`  
		Last Modified: Thu, 02 Jul 2026 07:31:24 GMT  
		Size: 5.1 MB (5121009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ce14231137906b757b2a5d011b8a7d49a8a0fbd576d366433f466e32ec48379`  
		Last Modified: Thu, 02 Jul 2026 07:31:24 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:c282738c192c9f9ceaf2b8f7076fdd77bc4de28ca66acfe29164873ed95c1e96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239735204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6500037b14f0aa7dd4990514a317b3f74dceda10f4d35f0aa1626b932eadce17`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:54:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:24 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:54:24 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:54:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:54:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c594f15d9b63166ff29f1b26d7ad159c73df8f75e12276b07cdd1069263001c`  
		Last Modified: Thu, 02 Jul 2026 05:55:06 GMT  
		Size: 147.4 MB (147388347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b7c66370e066f1b430c915aa0ab41e275d63b828611fcf23c74cf1e22fb51e`  
		Last Modified: Thu, 02 Jul 2026 05:55:05 GMT  
		Size: 65.5 MB (65452229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393316a4ba98ae9f93f1536fe67e9d6cc0ffb614ab4956364e4ea379a8e68907`  
		Last Modified: Thu, 02 Jul 2026 05:55:03 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc637481f40317e025e0972d7e3b7b86b44a70ee752b4bebf521ce0fc388982f`  
		Last Modified: Thu, 02 Jul 2026 05:55:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8fb55afca8001a02ee7b49edec2b74e5bf74ca404cf0501690c23f86b5673d04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275c8ac0a6690a902f2bd00276185a13395f814d15fa66d631d1088937f783f9`

```dockerfile
```

-	Layers:
	-	`sha256:fd4d98241e7fa7a703e868a4e9513d0fed0ad56d5460a56f1bcf2f0f951f6f22`  
		Last Modified: Thu, 02 Jul 2026 05:55:03 GMT  
		Size: 5.1 MB (5107172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95cf997b65f384b907b9daeee47abb5809533cc6ccfd3c85693a42270ca25007`  
		Last Modified: Thu, 02 Jul 2026 05:55:03 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json
