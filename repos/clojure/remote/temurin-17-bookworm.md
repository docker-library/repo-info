## `clojure:temurin-17-bookworm`

```console
$ docker pull clojure@sha256:067ff47f142fd50dae77259093c20ededef484d3aa469bc86c7a7adc6e25f6dc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:e73cd9b34ce8bd39335cdd1fb0bed1de5a146a75137ccf27ee943b075a2c399b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272345638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3bc07e935b198313cfcd6af5821b13d5c01accb9983fe515ff08ec2d5a773d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:48:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:48:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:48:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:48:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:48:37 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:48:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:48:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:48:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:48:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:48:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aac2f3445030c72e2d1ecbf2b2620972766e878243257d94dce3e4e35ade5b1`  
		Last Modified: Tue, 27 Oct 2026 00:49:16 GMT  
		Size: 145.8 MB (145825445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25968d94028001f654308d137977fc9703a14d5d8280f1cbc9bf049dad2615f6`  
		Last Modified: Tue, 27 Oct 2026 00:49:15 GMT  
		Size: 78.0 MB (77997064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf20430e0a40759353031f60dd3904cc5dd2c214013a6bf724f60944c3826e1e`  
		Last Modified: Tue, 27 Oct 2026 00:49:12 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735b6b36b2346234a85c6f200d8bfc0b340e357922063f99f0df18763fba0015`  
		Last Modified: Tue, 27 Oct 2026 00:49:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:08a95128ceb7e556298a88336b36aacf1bf4407ed806770bc2b113c34d3395c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7394501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0dc405e807512ab3f5c68231af48dc33fac3deda4cbed4b671fc601418dd6d6`

```dockerfile
```

-	Layers:
	-	`sha256:beac81faac75227c6a120810da0aa41a692c4e618d4bcfee43a8cfd6b14c8225`  
		Last Modified: Tue, 27 Oct 2026 00:49:12 GMT  
		Size: 7.4 MB (7378569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca7f69530fc2b0964b52feb442ca846b61f3bb5ce361e8d7ebf75c6163356dcd`  
		Last Modified: Tue, 27 Oct 2026 00:49:12 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:83469313b74eb4c1d56cbed62b7f6b73f30a0b3acda7dc8617cb7d58f7c3a5ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.0 MB (271045166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f52567e9606c878cabb34d06906d90549846131708891861c812c64b5b8b063`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:48:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:48:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:48:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:48:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:48:14 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:48:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:48:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:48:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:48:29 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:48:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fcd8c3b04e93a197a2908310007f54ff75b50db40aaebb90e4c0a9954222ac3`  
		Last Modified: Tue, 27 Oct 2026 00:48:53 GMT  
		Size: 144.6 MB (144648250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031853f8cf657157436a651e6e5224e838f3e43069236f8c82eb70825c9807b9`  
		Last Modified: Tue, 27 Oct 2026 00:48:52 GMT  
		Size: 78.0 MB (77992764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9697614204c7e925c281e55b74133cbff4eaa338459c63875be6eb7f35abdd9e`  
		Last Modified: Tue, 27 Oct 2026 00:48:49 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1644d59e81886ed393128a0d5b8f773888d49b9864abd5350633d0433990d3`  
		Last Modified: Tue, 27 Oct 2026 00:48:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c64db4a019e723e7c1fc31e55f37bcf7ff39dfd22beffac3a4e1decb67037693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b196a8d194d47a0a7b6322e0ec0055aa6f6b0bd7345871f1d1865f791d4795b6`

```dockerfile
```

-	Layers:
	-	`sha256:786b54b4675fd320782e4721af9dc9e65527144f09694910659589defa162f71`  
		Last Modified: Tue, 27 Oct 2026 00:48:49 GMT  
		Size: 7.4 MB (7384332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d81120d902edc6d792f99d905c04d54a166d416a6fb59a7861a176264737b4`  
		Last Modified: Tue, 27 Oct 2026 00:48:49 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:60cf2ffe20a8591026d35c5c73aec7a6f95fd4599d52a5ddd2d9761434458cdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281873919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87eee61b8ad63cd8d3e4c81367198b2915a2f86218ed3dce324fb6031b9cfeb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:16:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:16:35 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:29:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:29:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:29:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:29:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:29:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbee517126a754df9c55cf053e388fa44232986d93d455338c5c357816aaca83`  
		Last Modified: Wed, 21 Oct 2026 10:22:05 GMT  
		Size: 145.7 MB (145671508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b946d03f1d850b7c8f4284e40d68b9a1a5a4dcde3901c65c871cf7771ee97819`  
		Last Modified: Wed, 21 Oct 2026 10:30:11 GMT  
		Size: 83.8 MB (83836626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ff8d4be0353a80ae881d911c4c2f5a118df70613b85627440bdf0f9c278ede`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca518a66c04e1f2bbbfe81b2197de8d8f392c71702bceb5fbc6d7b2b7f1a9e9`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5dd2b4446c14eaae431d67060074fae96b4057f26c772f6be26dd62fee268ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06a5d7156b808b21265968c522883dfd39b41f7c3423b6b7dc7ccd5bd099b9c0`

```dockerfile
```

-	Layers:
	-	`sha256:c467f2354d882b77e21063f94cec78f6411b3fe070ace00bb08eb651354dd8e0`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 7.4 MB (7384559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:818f0212b5ecf8156922cfdf1715bec4be09104d7ae952c2b6fb27c4ca630d49`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
