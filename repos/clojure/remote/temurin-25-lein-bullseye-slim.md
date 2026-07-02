## `clojure:temurin-25-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:939dd95db726ccb37711f390182d0db88401c0c66be4d5b10c9f322e67b1ac4d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c5bfe88e4244ef7e38a0d61c071451a5edf7ab535956c40fb7f5da690e0174ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142993438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109a898040a82ac1a792e354be0ffc1bf81a843d230e7d7296dd55ee70a63e97`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:54:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:22 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:54:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:54:22 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:55:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:55:30 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:55:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:55:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5badf3325079d8973586bbceff5c606beb0ed945015ac532b4c4bd193d72de`  
		Last Modified: Thu, 02 Jul 2026 05:55:53 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003f2a52c529e8b723c2a24c6703e4e438c6e690d81c1f22281fb1f4713fe9c9`  
		Last Modified: Thu, 02 Jul 2026 05:55:50 GMT  
		Size: 15.6 MB (15643775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d88baa4195f7dafa392bd9360f55bbe7111189d107091b5c2b10136767bbf2`  
		Last Modified: Thu, 02 Jul 2026 05:55:50 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc77924f0ba3ac3d1088276024e0ee4412a5c89d1346957a4690bff4e9265c7`  
		Last Modified: Thu, 02 Jul 2026 05:55:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8742c00b918eca68e40ee9d2fc23dfa3fcd20f4977f94fedcf457dc532ac4db4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3023596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4a68d6a9fdcc0b325e14c1092d88b75ee8139c85583d025b1b91761b34099b`

```dockerfile
```

-	Layers:
	-	`sha256:2cfd0e91aecf42367968e619a2f16a2ff6cf5b7e3148b0f347c57bb4d5631e1c`  
		Last Modified: Thu, 02 Jul 2026 05:55:50 GMT  
		Size: 3.0 MB (3005168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:177ca57d069be5f2a9c79c1b6cf5353528a613a6b27f0bf7979f7452bbd82c23`  
		Last Modified: Thu, 02 Jul 2026 05:55:50 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:aca8588b5ea635510339ddb3d92eab7602902f05d8fe4221bf97935fe10810e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140424352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c055739f82e35a7e18298c58c618dfd46bbd4f83696bc1fa85d2e4d8c263d5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:54:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:49 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:54:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:54:49 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:55:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:55:57 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:56:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:56:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:56:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:56:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a95c49db83d6e0d9d05b140844a3ed46f9c78e5058902ff152e4ac039954ad4e`  
		Last Modified: Thu, 02 Jul 2026 05:57:09 GMT  
		Size: 91.5 MB (91542268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceab6be8d98787508622af3f274dad5b8cfafcf3a19a2c8531e7e0dcc800300d`  
		Last Modified: Thu, 02 Jul 2026 05:57:04 GMT  
		Size: 15.6 MB (15619516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c04db08cbaa3decb202f5ff5c748d0c3aca6955c7e2a4c7c2963fef736bb015`  
		Last Modified: Thu, 02 Jul 2026 05:57:03 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51f031e3c89949a4589a2311998a4fced97be21d0a70fcaf8a9829110f97507`  
		Last Modified: Thu, 02 Jul 2026 05:56:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:772c1fd74fadcba9f7707c1a619e8c576ecfc036f74f87e276981c359312a050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3023371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c12d91ea0712a73c65c644982ba271dfe06c62849f00abd74a7d6673e47aca`

```dockerfile
```

-	Layers:
	-	`sha256:9dc9389b974b0db865bf96b6cc9c50de46736892e0caa78867f64cc2495b195f`  
		Last Modified: Thu, 02 Jul 2026 05:57:00 GMT  
		Size: 3.0 MB (3004798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:535bbd5917e1f6049ae26827b447e1f8b020640d6a5f9e7627fec1727c85e5d6`  
		Last Modified: Thu, 02 Jul 2026 05:56:45 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json
