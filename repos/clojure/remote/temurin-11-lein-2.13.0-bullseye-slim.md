## `clojure:temurin-11-lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:bc4c28f028b7b5e027d4b14c133fa87ec51afb010909d73a42aa21777498ddd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0fd1ade65ee369ec4a8208d76850b90d4940e88bb617b4e78c6140f5f0ae762d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196305465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9ad40b3ac0efacc5b6eb6ef56a816a755a48adfa73cf59ae7ca980c9082de5`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:47:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:20 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:20 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:29 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:29 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:31 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee8bcc3b55206c222b0b28774e86575b5287e968080ed77cf31b77604ce02e7e`  
		Last Modified: Tue, 04 Aug 2026 02:48:51 GMT  
		Size: 145.9 MB (145886357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5a64f0af536e640b3e7afeffa68c8ef2849d86ff3af5006758bea25e8ca4ef`  
		Last Modified: Tue, 04 Aug 2026 02:48:48 GMT  
		Size: 15.6 MB (15644138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1e81fc196f8e05d4ea52ed5469dba9b1fc0f4b3e1904327adbf861a36bade4`  
		Last Modified: Tue, 04 Aug 2026 02:48:47 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:28adffdf3f23f25ffd69d904ae2c0a5b5a6f7928402d381aee17e3241719be21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3072406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beea43eca36d9e63d413621e71317aa122017fc53e5ddf1261a72e69c9949796`

```dockerfile
```

-	Layers:
	-	`sha256:a42d428e105bd3caf2c69722c8e0b91b348e07908a83b19cffcc051e27ff5249`  
		Last Modified: Tue, 04 Aug 2026 02:48:47 GMT  
		Size: 3.1 MB (3056628 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77a02bd79ec92489ab9e38f760336c3bda806587d11273cbbfb0eba256cb4aad`  
		Last Modified: Tue, 04 Aug 2026 02:48:47 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8b279c79a0a791c6e945c62a781bfd5d34b93a1fadfcd8693c975373f01c793a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191466367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be0d5b6906e470ec640d546df38b7d4525150050c03b4c1617e2c7cb8d7373a7`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:27:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:27:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:27:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:27:50 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:27:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:29 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:39 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:40 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eeef187d253ae371a98d69a009da4140eca96ec33ad80daa31fc4177dca14eb`  
		Last Modified: Tue, 04 Aug 2026 02:28:33 GMT  
		Size: 142.6 MB (142582296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f46cf67f8678fabaa6732928f27e9ec853bb9537907e9847f4e9dd8ca7c417e`  
		Last Modified: Tue, 04 Aug 2026 02:48:51 GMT  
		Size: 15.6 MB (15619870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ac49cd49858550be1c770d231d8f2b16a8cc9a4a580007e273b3084ae7efc7`  
		Last Modified: Tue, 04 Aug 2026 02:48:50 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ffd7303ef2dc716c50a55712864210adb2cae66d25f277a793a8067a6d422eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3071798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95fabd2f4c7416276f160d9ce2d1a08174062eed4e5b105c7f0cc7418d4e35f3`

```dockerfile
```

-	Layers:
	-	`sha256:7590ec88cf206ca6bd7139d420fe29d684deac9dbda2b309f7cb0d7b89d1d5ee`  
		Last Modified: Tue, 04 Aug 2026 02:48:51 GMT  
		Size: 3.1 MB (3056855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8bc258f7aa1b2cdc80167baee629d26b97c43e6a91181c3fdbd112675375f3b`  
		Last Modified: Tue, 04 Aug 2026 02:48:50 GMT  
		Size: 14.9 KB (14943 bytes)  
		MIME: application/vnd.in-toto+json
