## `clojure:temurin-26-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:342a0ac91447b14daaa8744bc28d5f7af7ebb49692d2c37b71044ba6b514f333
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f8075c040b1ac972092da39a360f5c5da3ded0c724237e11bc80686955cfe1f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180891248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8e76aa732cb17678f0c72111438841c0196685247911c8f09d3b4b17f0f412d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:58:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:58:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:58:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:58:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:58:03 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:58:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:58:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:58:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:58:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:58:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196606c91da46b4e334f851b6f6e52667b97c84f45da4aab94c8da7b1f9c17fb`  
		Last Modified: Wed, 29 Jul 2026 17:58:37 GMT  
		Size: 94.5 MB (94524344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a65d071be9a4eb85db3987268f033343463236c7dc424173fec5b7c93d2ecfa`  
		Last Modified: Wed, 29 Jul 2026 17:58:36 GMT  
		Size: 56.1 MB (56106107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4fe371894615047e94a4d90c630c5927e6828c659c33ae2dcf1e154872def3`  
		Last Modified: Wed, 29 Jul 2026 17:58:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b60b8db726ec46d2070143cdf712a87b67db1c30339ffc0d1e5ba292c33d9b`  
		Last Modified: Wed, 29 Jul 2026 17:58:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:08c7dd23cb6061f4f8cd9ad3285771bba9336b4e911554428e28914227dd2948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5298723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8057574c30255409a03b8dcd2e1d7caa886701b95cbb00b6e4e28e9e7dab079e`

```dockerfile
```

-	Layers:
	-	`sha256:eff3c3e62a26f4a35f19a77591ef28d28f639253372140fc7f3f967a322657b2`  
		Last Modified: Wed, 29 Jul 2026 17:58:34 GMT  
		Size: 5.3 MB (5282740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64eb19a4c65afaff7ad7ceb2a6112520b14e37857d9769008a2850fa92120ab9`  
		Last Modified: Wed, 29 Jul 2026 17:58:33 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3103e7d72859456a8f2b85ac191cf81c1f9de5f821917f408d774b0a06a5be1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.5 MB (178530359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7122da08ec25167dc7e33252ede065387d057d0be055e0709510df0a0f546bf0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 18:06:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:41 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:54 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317a9fdd7d47d6613f04e0628a5c2e6b07350324eebc40ae483801661a46dd5d`  
		Last Modified: Wed, 29 Jul 2026 18:07:15 GMT  
		Size: 93.5 MB (93504353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e7617c731afe064b5a4eabe430b99caf24162000032392f8c4435d0e8444e5`  
		Last Modified: Wed, 29 Jul 2026 18:07:14 GMT  
		Size: 56.3 MB (56275978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3e52547a2ca11731365eae3ff10e9f681835a67ae8f53a6b5e0e127f04229e`  
		Last Modified: Wed, 29 Jul 2026 18:07:12 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a76c7eae534b702b3b7d60f6593779b3bf787436a24b1408b692a3bd4a60ebb`  
		Last Modified: Wed, 29 Jul 2026 18:07:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:438f66833d756a30aebe5bb063065f3e05070143922e9452078c7ec38d826f3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5304570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d812a63da90016a3102c69079e02d8b708f3419214f371306066c44369c53759`

```dockerfile
```

-	Layers:
	-	`sha256:b3668712a31f490881a8d7aeb32a146473c905b61defd8062d05655c35dca3a1`  
		Last Modified: Wed, 29 Jul 2026 18:07:12 GMT  
		Size: 5.3 MB (5288469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43f620197183dc5ef5cef34109703d5426861bb24730744a68729bee85704038`  
		Last Modified: Wed, 29 Jul 2026 18:07:12 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json
