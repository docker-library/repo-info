## `clojure:temurin-26-tools-deps-trixie`

```console
$ docker pull clojure@sha256:5f7c4ec7e88279a81de599f48ff9f79c1219c952d34f636dbb96a0d5e663a21b
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

### `clojure:temurin-26-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:3c2808430ff320feae6553eb9b0d9c346ad5259857e8ec30ad70b26612c36b24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226364442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21a34c73df9193ddf35f6c7600900582716f676a32a9e0e19d62380ede280c4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:58:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:58:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:58:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:58:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:58:08 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:58:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:58:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:58:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:58:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:58:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32aca4fa94d814d4b49f1cd46bf3d009739506c203928c9d295fcc0cf38c81da`  
		Last Modified: Wed, 29 Jul 2026 17:58:48 GMT  
		Size: 94.5 MB (94524321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c44febee0ca589c407da51897302bdcbef35e12e4644aa3b9f650f9279b18e`  
		Last Modified: Wed, 29 Jul 2026 17:58:48 GMT  
		Size: 82.5 MB (82526505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b7ff933bf03fbc94e50b7c5f516f083d11d501f0e896aeac6d392fe690c135`  
		Last Modified: Wed, 29 Jul 2026 17:58:44 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632a1a3e3fed6f5261abd5c591ce7ad23b338290134c853c6fd9afae6044c6fe`  
		Last Modified: Wed, 29 Jul 2026 17:58:44 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:20e75b5c9ecf8d4e3b721d0c0b0cfd14f923d50b446f3a1aef7b9b7d4395ba21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925b746649772f77b782386eb16749ca0419b11904f799341cbe009b1f4c6372`

```dockerfile
```

-	Layers:
	-	`sha256:fce1af4d6b0f971c5253d7f85f838cae1c03c6f41e87816349e8f2a1b2e1fbcc`  
		Last Modified: Wed, 29 Jul 2026 17:58:45 GMT  
		Size: 7.4 MB (7433752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c924b670152279ccfc9377bd304a86cb4557cc24bcbc9bf1b4bbffe69de444d1`  
		Last Modified: Wed, 29 Jul 2026 17:58:44 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:79191b5f34e4c5222f1f4340a58b19f1b69b8bf147cccaad13e767e00bb4a298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.5 MB (225528499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf9545111653e5241cedfb476860e5aee776897999fc95b271e59294db839a7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:06:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:42 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:42 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:07:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:07:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:07:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:07:00 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:07:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e17633a4b426f7f2b6d585db6b0d238b51ba26f6c9305844183e7d1a7fdb24`  
		Last Modified: Wed, 29 Jul 2026 18:07:23 GMT  
		Size: 93.5 MB (93504302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec2ef4df55880a446fb893c2abee1dff0d8f90685278c771c643882e3f07a03`  
		Last Modified: Wed, 29 Jul 2026 18:07:22 GMT  
		Size: 82.3 MB (82348972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19529ad44c98f0af3cc243b44adaddc470579d19cbc86dbaff20864cb6f5eba`  
		Last Modified: Wed, 29 Jul 2026 18:07:19 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5f429bbc659210b5edb2ac6f2e5f63da52322b4758c04fe6ebdc587cb587f41`  
		Last Modified: Wed, 29 Jul 2026 18:07:19 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:41785f184f701f9754b4b397a09ec679faed4682b716b49747a258feec3122ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7456161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc93dde3293030086e6e0f2eb54a6ca6805245cd045bbab2ae809a9cb6bc657`

```dockerfile
```

-	Layers:
	-	`sha256:af28bf693065c2e3dab566ee7986a7d5b262ed965fe9eab53be543792a9c7d93`  
		Last Modified: Wed, 29 Jul 2026 18:07:19 GMT  
		Size: 7.4 MB (7440142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5df3938735235a308db08c98c48ea62f80de3e276eb67b0ff5b9a1663ad8e9dd`  
		Last Modified: Wed, 29 Jul 2026 18:07:19 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c05097075ddf65c473bc3ae2d2ed2b1abbc5d6889aedb80a4990722badf1119c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234983265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d41afe19002c1b16e066dcdecf071a1e050b1f74f5c5b075f11866eefc8f7d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:19:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:19:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:19:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:19:30 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:20:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:20:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:20:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:20:09 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:20:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc9c6bcaa1a78ddac0e660501283e53e0c5705588367702a32e1602bb80f863`  
		Last Modified: Wed, 29 Jul 2026 18:20:54 GMT  
		Size: 93.9 MB (93902028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7586d70a9ceef790724d57a03b3d220a270023a31013a2483fdb30e9ec0f88`  
		Last Modified: Wed, 29 Jul 2026 18:20:55 GMT  
		Size: 87.9 MB (87946181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3118d5f014bf557ff6f9ad6b1708d8aff835b48244dab55f9e3e4ed985836cec`  
		Last Modified: Wed, 29 Jul 2026 18:20:51 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd7832c50aff7ac4f7335f6a473a81f47c34d1848e39d0270c9b214a9f3cce3`  
		Last Modified: Wed, 29 Jul 2026 18:20:51 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e67f526533cee93af2c9394faa3d1d99d12c6bef185aa942ea7d612cd13a65aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7438057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fc793ba201e35cd409403f1cb42242b57c35b25aee5024951821df2e526ff4a`

```dockerfile
```

-	Layers:
	-	`sha256:3c959aeaec4c985e324ec016cd12bb77eb0df91718dd293d88a0d8185e55d806`  
		Last Modified: Wed, 29 Jul 2026 18:20:52 GMT  
		Size: 7.4 MB (7422109 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e761f844ead149ea2a1468d7493bd20c9b71e24e871e8aa7f0ca5fe2bda73c80`  
		Last Modified: Wed, 29 Jul 2026 18:20:51 GMT  
		Size: 15.9 KB (15948 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:79f6ef8c686d70d45ecb4011573670d1e6813b013c78160edd4c955861e1f0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223432321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0856528eb8d983075da868bbdf543bb68d2dd01ee410e5ab6327011f4ae613d4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:25:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:25:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:25:30 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:25:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:25:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:25:53 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:25:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1eba3aae59e009876d5e78a71f6d49dfd933dc1d6f3428d76367b14eb8234dd`  
		Last Modified: Wed, 29 Jul 2026 18:26:26 GMT  
		Size: 90.5 MB (90536958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae9dbbb855d2ffdfc991fd0268e3145f188b625a7a6a70eb3e325bc20a09bf2`  
		Last Modified: Wed, 29 Jul 2026 18:26:26 GMT  
		Size: 83.5 MB (83512613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96acd8bdbfd76a6aa3cb348189e1e1425e72d56cc396da4a92af86eb5e0c3f0f`  
		Last Modified: Wed, 29 Jul 2026 18:26:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b3938686d1ef880d77744b40e1a170ae602d1025aeab54a722a2ab9f826eaa`  
		Last Modified: Wed, 29 Jul 2026 18:26:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0c3e27b8d4262f99156804106b9062e2b617b2eda50d9acfa0747877f718c274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7430761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e62495031abd4bfaa3d53a369242f67dd1cac17a2b76100e2b7955d03d5eea5`

```dockerfile
```

-	Layers:
	-	`sha256:40730e38c031993e48d291d345e0fc4a5c19feb58e75ce1712cd489f179ec86f`  
		Last Modified: Wed, 29 Jul 2026 18:26:24 GMT  
		Size: 7.4 MB (7414860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab225f2d2400ac1088075ca2e1a15ede8bdf7a31f4e5581107b42b0db1bbef6`  
		Last Modified: Wed, 29 Jul 2026 18:26:24 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json
