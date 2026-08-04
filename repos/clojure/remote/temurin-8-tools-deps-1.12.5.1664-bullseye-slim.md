## `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye-slim`

```console
$ docker pull clojure@sha256:0d40090ed5c38079a72502a5eb0576cd0f5addde23644a06766d4feba09cee68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:92aac072a39d24e0f1c552583441773f5b7796e87ecb21d5ce8ae063ee9adc19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141564842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e8ad50d6c52a6d1704a39ef0d314222178b1bf1cab9886ebc9cdfba41ebb20`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:46:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:46:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:46:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:46:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:46:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d480a0095462aba105d22162011297a07d6c9bb21c9171e2a663215d3685ad`  
		Last Modified: Tue, 04 Aug 2026 02:47:03 GMT  
		Size: 55.2 MB (55198686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155f8c417a57a8b4772d0656f341f8b2d2f5a0dc430b1d74a454f6fdfc2fd498`  
		Last Modified: Tue, 04 Aug 2026 02:47:03 GMT  
		Size: 56.1 MB (56105757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dddc2b07a2c989e710cb4b53739429fcc60dff0dfbd006780941f3756ed0043`  
		Last Modified: Tue, 04 Aug 2026 02:47:01 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6dbd25ac5dfff5f63ddd66258d6c437615dd45ce4f51a574f7bb043e039ee206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5452611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea7e5cdbfd8b6065735054153927fc3940298e1f396b5f5d045b80e92d49afd6`

```dockerfile
```

-	Layers:
	-	`sha256:4f5f3dc4226e2e9f2c4b10baa0b97f14a19ecaf27dd6a4f06a2495c3f4c83796`  
		Last Modified: Tue, 04 Aug 2026 02:47:01 GMT  
		Size: 5.4 MB (5438209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b760fc0ef5457245ba3450dd84f0cf254ead090531fe7d59dbf612f296253c9`  
		Last Modified: Tue, 04 Aug 2026 02:47:00 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4757d4bbce7b31510e49ed19afe3c753c8ea5e0eb93720f3cb83095073ce096c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139298685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2fc9b6d1a25b9aa1c9200002730db337700be6e57981413490034c52823e36`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:46:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:47 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:46:47 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:47:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:47:01 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510bad5977c1ca4955145c88ac8ec37481c45b9c9382ee6c2cd14dd4c859f503`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 54.3 MB (54272935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5430079b7f334400967e1244787847c457e83789f06514594897ca2473c009d4`  
		Last Modified: Tue, 04 Aug 2026 02:47:20 GMT  
		Size: 56.3 MB (56276120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40c44576f4677dbfb922e0aa35537461bec10948695c6649a13a978739b4a2d`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:44470143a2afe38e2495a237779cc842bd303002a5040fef50b3e4bbf28986e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5459161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ede4565cde12c8fed7656e3c806e4a1cecf47d4afe31630b762a79391174999`

```dockerfile
```

-	Layers:
	-	`sha256:4aa678fa23ee9fc829748523068bc56d1ff5ce0a875798a849441c28c7e3e0dd`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 5.4 MB (5444641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:686c6d8711f9b7cb3177ff741e51a58a537f2cb29ea6915c33407611a20218d5`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json
