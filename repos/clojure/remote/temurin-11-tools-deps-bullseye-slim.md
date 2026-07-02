## `clojure:temurin-11-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:6c864396f95c82cd61fb59e1535986f99bc611ced942fed7b6d2ee0798c0ae05
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c2c46dda92d432353709ef406d0e14c0ed9b01dbb36c9169b06d9cc844e2488e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232246543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f570573313ee4a6111deab6ffa4874e2ee13f06114d28200f115f932e40aee90`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:49:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:34 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:34 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:49:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:49:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9537703edadaabcc430deb1c6c691402a8a9e4c922e1c65edde696c7294e24bf`  
		Last Modified: Thu, 02 Jul 2026 05:50:09 GMT  
		Size: 145.9 MB (145886155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53607cd089d0b4f5ba8b41fc3207c7942ff94fb9e33299bbcaee6869d55a1011`  
		Last Modified: Thu, 02 Jul 2026 05:50:08 GMT  
		Size: 56.1 MB (56100295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280d0bb506b360b4468f9217ade8083be4c54ba908b9013fe5a54de98ca0e990`  
		Last Modified: Thu, 02 Jul 2026 05:50:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a8595bf52bca3f90115040288c8923ee0fb4633ff2bc25a03ad3c7109cc000b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5351785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c76d666318fdba9a9fd18f950e19f9a5ff764dc175a0b5e7b99e2ea91e53efe2`

```dockerfile
```

-	Layers:
	-	`sha256:6af98c6960414b8f31a64d5fadbd07cd62369c0706231b28482673675b4872ab`  
		Last Modified: Thu, 02 Jul 2026 05:50:05 GMT  
		Size: 5.3 MB (5337365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a841978f026edb5ce3347122e00b355a48684294da44f3af7a30792812bac15`  
		Last Modified: Thu, 02 Jul 2026 05:50:05 GMT  
		Size: 14.4 KB (14420 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0f8b379f72c6e001c5a0c4621af2db928a4b9af69daa0d203295c72a0445f015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227597126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776612b6fa73749bac4e69ebaf5c3316d0833ad419f49aad067be168656c3db1`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:49:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:57 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:57 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:50:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:50:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26424f67d12ac1ed8fdd7620145b73ade9c9b27670246c8f3b8830cb7dd6f42a`  
		Last Modified: Thu, 02 Jul 2026 05:50:32 GMT  
		Size: 142.6 MB (142582195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ac58d1439417446ee3e057e7f93990c3aacc83a3d39cfe0aff4a72306b50a4`  
		Last Modified: Thu, 02 Jul 2026 05:50:31 GMT  
		Size: 56.3 MB (56267358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d820ec41dadfec1a8e400a8fe37aa35e82997d077047a14c1b7f5f072ad86f`  
		Last Modified: Thu, 02 Jul 2026 05:50:28 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c7533bdfcb6196b286ffcf0a2a175c3d4c137dfe0758fca4e88fbf471e125bac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5358254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51805465acc1d8b23807080c8c8fada22d0b37a8956b1672131d613d10150b7`

```dockerfile
```

-	Layers:
	-	`sha256:c1a89c67abda86d8a5da082e4af25d600837b83e928befe572db90ae5611cd13`  
		Last Modified: Thu, 02 Jul 2026 05:50:28 GMT  
		Size: 5.3 MB (5343715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:473c59fb70699140315629e1e87e1614cad42e559b80cf02a9d0a71c49126d45`  
		Last Modified: Thu, 02 Jul 2026 05:50:28 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json
