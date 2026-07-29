## `clojure:temurin-25-bullseye`

```console
$ docker pull clojure@sha256:59243d93cd33a240b4154da979c6064d0da4ca411ce61c6012200ea44fcbb4e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:59bf57c7477187031336b43df0b3fed1e4d375892f9c639bb43340e6c021499c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212870831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b0abb5270747ba95bf6021105cc2d9a23527594215f00f0eed631ed151135b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:57:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:57:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:57:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:57:17 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:57:17 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:57:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:57:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:57:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:57:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:57:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1478f881b8cd74300316187b2432e74766b74b36616b870e3dc6ce14f55e41d`  
		Last Modified: Wed, 29 Jul 2026 17:57:51 GMT  
		Size: 92.6 MB (92574597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51add356ed0f118c551c154890a6a759fb2b8d26ed73ac6777af0c763ffcda8e`  
		Last Modified: Wed, 29 Jul 2026 17:57:51 GMT  
		Size: 66.5 MB (66518614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92ac05989e3c175a5be2d7fb7c51fd26fefc8d213e830e9badad0410f3be77e`  
		Last Modified: Wed, 29 Jul 2026 17:57:48 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e661c62f56ea3ba42d6e8b25ea84412407e64d6cd81da202aea49bb499fabe`  
		Last Modified: Wed, 29 Jul 2026 17:57:48 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:cec224056b3587ed8d8e8495c177ec18f73a75ebc7260d14d13849411d91bf06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ff804f0c921b4ad661243230edf4b157238054070f9336374cc796c1247cc97`

```dockerfile
```

-	Layers:
	-	`sha256:152e01caa97b7ab8dad01e70a8a10f17dde81e8594d0a605300fe3050524c4d3`  
		Last Modified: Wed, 29 Jul 2026 17:57:48 GMT  
		Size: 7.4 MB (7373519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:957dfb3b0bda0481f8ccf45849952a1dacb6156afd9a2ca8abf1255228fbcf3f`  
		Last Modified: Wed, 29 Jul 2026 17:57:48 GMT  
		Size: 16.6 KB (16599 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1cb430f9b05896b0164810666f48bf13e433191b964f46b01313a60246923502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.5 MB (210489750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c4ae9a5118d533a8da812c7afd2ca835f5255448e0db18fe1ccdefa572d861d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 18:05:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:05:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:05:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:05:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:05:52 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:05 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf6d0454cd68e10231bf0cbf95bb6d2255ee025b00189ab940c7904832c38c8`  
		Last Modified: Wed, 29 Jul 2026 18:06:27 GMT  
		Size: 91.5 MB (91542221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607a079213d74dd32ae521e1df261104dac60009f2d0f6133083253f7c2601f7`  
		Last Modified: Wed, 29 Jul 2026 18:06:26 GMT  
		Size: 66.7 MB (66685594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02f9f8dec8f954f2b87730bf0be3624308e0c2929636e884dc2ecc5622c8bbcb`  
		Last Modified: Wed, 29 Jul 2026 18:06:24 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06651e286ba4de32a03785dce5cb2c50456c53ec5ca08b15b9f735ee94629eb2`  
		Last Modified: Wed, 29 Jul 2026 18:06:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:3aca97abb95756ed3fea4cf18497fd73a44ce75419cf350257db00a2ded55d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774f71520772b409311c38277bf425e2fc614417ec5df30491f31b7893b2a8bd`

```dockerfile
```

-	Layers:
	-	`sha256:c26778ad2a848593d757fa069494900fac34e6333c574126c19b3f0a00cd884b`  
		Last Modified: Wed, 29 Jul 2026 18:06:24 GMT  
		Size: 7.4 MB (7378639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:281a9a57a0b5278bd41776d92edfe1cbe43be3261d46fbde6dc9ddaaade777d0`  
		Last Modified: Wed, 29 Jul 2026 18:06:23 GMT  
		Size: 16.7 KB (16743 bytes)  
		MIME: application/vnd.in-toto+json
