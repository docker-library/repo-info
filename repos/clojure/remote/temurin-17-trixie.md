## `clojure:temurin-17-trixie`

```console
$ docker pull clojure@sha256:b95c65afe0f7b6cb9058a3e7b33423bc9edaff0b6b3fde473245b53028a1775f
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

### `clojure:temurin-17-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:5b269f1e201dce57e85adee81b4632de84f8fb22cf781ecdf8cdb0e56933cfea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277746511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c84d4c465097881cdca568d951ee6f01c50e35f4b7f77f12f4548aedeef877`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:56:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:56:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:56:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:56:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:56:24 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:56:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:56:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:56:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:56:39 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:56:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ae6b761da66699c1ff73cdc5b1fefd41b8caf7fde4cc411bbb4db028a480e5`  
		Last Modified: Wed, 29 Jul 2026 17:57:01 GMT  
		Size: 145.9 MB (145906278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ac3c919d6f10ef5e85b52e9c82cba3762ccc12d83830d31a2f135cd1335560b`  
		Last Modified: Wed, 29 Jul 2026 17:57:00 GMT  
		Size: 82.5 MB (82526619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9deb042c256b184b897df4063b9153565356beaa8163c75a17ac4f1688afd9b`  
		Last Modified: Wed, 29 Jul 2026 17:56:56 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114faff8fad6d04bc2b854b60c7b58a095ded7fea485e5d81cb10f460c8510d6`  
		Last Modified: Wed, 29 Jul 2026 17:56:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:31cc0d35d998725f4d558d0dbeaa780761a20effa438e98af28e11745227bb7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7484769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdbc787edf65ef0f55c50f9f547649539050255a0b234a660b315e6810af5a1e`

```dockerfile
```

-	Layers:
	-	`sha256:73cd8de65c337b2f71f1e28c8a83e31906297335898a193f0ce6bdc5e7c7262f`  
		Last Modified: Wed, 29 Jul 2026 17:56:56 GMT  
		Size: 7.5 MB (7468861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60725cc284ab8161829e73760311ee7150c4c9a7c971d52e7221c7bc461c1cf4`  
		Last Modified: Wed, 29 Jul 2026 17:56:56 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3d1d22227161f2f1ae5d1577978f36e62efbbb98d28d752673e3f29a9e9bb624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276748026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e375cf2b419b594889df3cc1ca6b1fed7f967a095e8f53cf137c38e81097f6f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:04:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:55 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:55 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:05:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:05:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:05:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:05:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:05:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a12ad229c2d123a73bb48d135bac3f7c18eaa9d5ad6592fac01183be38e79ed`  
		Last Modified: Wed, 29 Jul 2026 18:05:36 GMT  
		Size: 144.7 MB (144724317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70db1be13ba9509dacd9339d033cfec3ba4a97c4cc3b3809e9c4201e772f8d55`  
		Last Modified: Wed, 29 Jul 2026 18:05:35 GMT  
		Size: 82.3 MB (82348481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d88896fba042acb21ddf8e99e24d37689451f98f64a5892830ce55ad87bc424`  
		Last Modified: Wed, 29 Jul 2026 18:05:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce95cb7ab326d0fd91d00c405f5d7985eb22039fd4dcbb5dba6bcaadf068fe80`  
		Last Modified: Wed, 29 Jul 2026 18:05:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1f5bb0f87e69de3e2d3aa7aeee00ec8dd12de68068dde056a8575a6430bbcb69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd281df0b7817681fa467aa7a47d7f0af7e315350668c20b16300afcc63036d0`

```dockerfile
```

-	Layers:
	-	`sha256:2a1d360a3522e063cfa8e52da2e5cfb6263f41b03e7b086aee27fcb99ac28299`  
		Last Modified: Wed, 29 Jul 2026 18:05:33 GMT  
		Size: 7.5 MB (7475254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cda981d339fbd11f9265d256092980dd3bc897a05022f66b1cb22820278ea3e0`  
		Last Modified: Wed, 29 Jul 2026 18:05:32 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c8c81b145745cdf261c6c538a4bcc780c900d944e83ac9271dd3e9b338cd700f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.8 MB (286847416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907b69f8a32e8e72d4107bf1b200f27a5fdaafc0eef92e4393488dad1526ad50`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:04:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:10 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:11 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:04:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:04:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:04:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:04:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966a4e6d3166d8ac8ece53eb33234bb91635e0707b9c0bc395417542f9225275`  
		Last Modified: Wed, 29 Jul 2026 18:05:42 GMT  
		Size: 145.8 MB (145766213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3297b6aefe27c8b738659b2d7ef1076ad61a6e8597c6c9b12bd5a136ba6db5f3`  
		Last Modified: Wed, 29 Jul 2026 18:05:40 GMT  
		Size: 87.9 MB (87946148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aced5a7e32e2fa51001896021fc452fe7e5628f8b96ac4559f4cc98861d890b8`  
		Last Modified: Wed, 29 Jul 2026 18:05:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d336456a0a65b3425bf3841be0da7d65649716e9ee96e44ae633c99881f161`  
		Last Modified: Wed, 29 Jul 2026 18:05:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:47c87e68b79caafcd239e82392dd1a10dc1229162cd465a51f62ddc22e51e4e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539e8eea8a1f171ea75ceef4f22a2e79e8a6686f359e649ac63bf9558091a31e`

```dockerfile
```

-	Layers:
	-	`sha256:1534f2ec7a56c34a5ff6f326cffaf100e4f07e0fa338887a2d1c015334d4fad9`  
		Last Modified: Wed, 29 Jul 2026 18:05:37 GMT  
		Size: 7.5 MB (7473282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee3d7960da5fb2bf4dfd2e8f601fa9fc37cceb4805c4a92a83c4f2c16fa19852`  
		Last Modified: Wed, 29 Jul 2026 18:05:36 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:889d29af31f52b2c8e6c89f6a569d716d81e41590154dd910b6ead510547e8e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268806011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6754481fa2c3ee4693147cf204fb4b2f04985475bc9d140f958654b670264ff`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:20:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:20:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:20:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:20:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:20:38 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:21:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:21:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:21:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:21:01 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:21:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184f7a317c7e181b38f802ad68c5448d8380e006ab5e9439b9d8565ee9cdf30d`  
		Last Modified: Wed, 29 Jul 2026 18:21:37 GMT  
		Size: 135.9 MB (135910448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d769b0bd0a96c84b317123cb45598dfdde035df1ec1a598b1428ca77aa51e596`  
		Last Modified: Wed, 29 Jul 2026 18:21:36 GMT  
		Size: 83.5 MB (83512813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6ecd94e94566a1ce6a6fd4f5a68523eb69b2e8dc690a458cb8be4412161c56`  
		Last Modified: Wed, 29 Jul 2026 18:21:33 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1623951b4db75d34c3accb719960e6f7508640dc629fb75bd5e3bdf16c126c96`  
		Last Modified: Wed, 29 Jul 2026 18:21:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:40909aff78b60c8da3cdbff2cbccf57c8df58ee4ebf7cf3527256d1818c5df34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7480691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f37875f9aaca89656c5b8d846bf0adf4ba3dee696746553ec4852806487750f`

```dockerfile
```

-	Layers:
	-	`sha256:6c760a4b36819db3364964fb58dcd578c486780b0f55220cde9aad7bbb815c29`  
		Last Modified: Wed, 29 Jul 2026 18:21:34 GMT  
		Size: 7.5 MB (7464783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ea0662b41a57ecdf28d06a71ff67adad802a211c98bd3c8271ae302c0d213d3`  
		Last Modified: Wed, 29 Jul 2026 18:21:33 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json
