## `clojure:lein-trixie`

```console
$ docker pull clojure@sha256:cfc19dd37e16af62d5dde6cb0d43204fecfe8082457986cb9afa47ebb3bbf02b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b7c1444c17ae28f75496d7281ad5cd9a49ecc60baaa58322837eb3f2acf8add4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165432711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e415b13268f5fc09487913452ad2ec1758d060fb765f78bdd4b89032577a4c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:12:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:12:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:12:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:12:32 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:12:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:12:32 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:13:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:13:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:13:51 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:13:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:13:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:13:53 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:13:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd99390418db7b4a26ed244ce6bcb3a286d895af20d6ec51925930ffed8cc2f6`  
		Last Modified: Tue, 24 Nov 2026 05:14:13 GMT  
		Size: 92.6 MB (92613972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08efd029c9a6ab67950c64ba8fb65ac9b0a9600e68fb9a07750048c296878655`  
		Last Modified: Tue, 24 Nov 2026 05:14:12 GMT  
		Size: 18.9 MB (18893318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01fa6b3bcbc3f4bf74d06325ff487011c19133080976c74d59924da178faf2c2`  
		Last Modified: Tue, 24 Nov 2026 05:14:11 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cab3d8514ea075c0816d5124a6baf63f853a83bebbd05c0dc8a4039a91f5fe`  
		Last Modified: Tue, 24 Nov 2026 05:14:11 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e49a206563ff79d97b243ccad24b6b5c2cbbe0daf8a565a49e250ddbead40eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96e0746e30fb9688928dd565657ddbace70d54a57921b2be5473565599cf20c`

```dockerfile
```

-	Layers:
	-	`sha256:2345e2ae2219b512af7148fe2a8b390b461b6420a10f5e7b180722f783245ef4`  
		Last Modified: Tue, 24 Nov 2026 05:14:11 GMT  
		Size: 3.8 MB (3793728 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95c72e1c29fb3848756d12ccfb19c4316f56128ce27282fa64ea8c5f3f319baa`  
		Last Modified: Tue, 24 Nov 2026 05:14:11 GMT  
		Size: 18.9 KB (18941 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:720fd8366b1075a1ef1628bd5929464671945526139242c82888feb1a5b72798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164706326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5978f1f4d3f7bceaa3d8df76336ee3d1e1e4f2e2d22ddf10cb3a2d6309177bd9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:18:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:18:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:18:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:18:19 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:18:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:18:19 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:19:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:19:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:19:40 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:19:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:19:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:19:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:19:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c964f5a1084f79bf8f5a0522386412d5bde2ae6a43cbd2bf3b2e231154a2e1`  
		Last Modified: Tue, 24 Nov 2026 05:20:02 GMT  
		Size: 91.6 MB (91553945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187134ef8370a42df5dcb7abcbee42ed275ed16711e7bc6e24f0af9a8b1f44f6`  
		Last Modified: Tue, 24 Nov 2026 05:20:00 GMT  
		Size: 18.9 MB (18866159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c1b65e376e8c8583ebbe54fdecf577fa8995fb2c80dae771d19321d657c83c`  
		Last Modified: Tue, 24 Nov 2026 05:20:00 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d96dd9bd0425161f1713d8cba8df48083275bc2f1c0f9edf4a385c87c7db45a`  
		Last Modified: Tue, 24 Nov 2026 05:19:59 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ee70fec6b09742e9115d64c78adcaaf36e85125fec15ead67275d256f1f4cf48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f3b5c401487c92341e1c13fed34594c6d1e5fdf6ce516e26487d3c483c94c4c`

```dockerfile
```

-	Layers:
	-	`sha256:f3dc0cf28eabc11a12ea0cf37fafc0f5d46d6fe336beb266d33e69e68c357dbc`  
		Last Modified: Tue, 24 Nov 2026 05:20:00 GMT  
		Size: 3.8 MB (3793989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e64cdd3d07e0bef748dbbf36404e83c4e6c41379a58e4a19b66a1f73b06b1501`  
		Last Modified: Tue, 24 Nov 2026 05:19:59 GMT  
		Size: 19.1 KB (19086 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:00f0e4b37ba14692bfa6018fdda90a4ee8045620d029ed3f314da17247a6e643
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170607160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12af31f35ccf68f24b6c2d412d1f99b6e774898ccd7ed0462d9d1c719eb0221f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:47:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:47:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:47:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:47:29 GMT
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:47:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:47:30 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:34:21 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:34:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:34:21 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:34:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:34:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:34:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:34:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febe6297f2c0e01e55cab94b54945da73efad2a95f4b72148fe950b5d1274b6d`  
		Last Modified: Fri, 20 Nov 2026 19:51:33 GMT  
		Size: 90.1 MB (90119619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43eef8a2cf4b9e449ed3ab660fee51b0ae0ab54dc60115e0700048e652d18f67`  
		Last Modified: Tue, 24 Nov 2026 00:34:47 GMT  
		Size: 22.7 MB (22745788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa33e43d1f308a34cdcbf2b8027795da53da3d3f2957c50c72bba0717d4b778`  
		Last Modified: Tue, 24 Nov 2026 00:34:46 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d98763e9d37693b188397f3c3a080e2294c974e7999e0c6bda6ee1a4b0cbf2`  
		Last Modified: Tue, 24 Nov 2026 00:34:46 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:507fe835a7c59a6c7fef4fe00b5d218c049a12d8ac700cd6293709f089232371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9622fb1ff061557daf96a9678b8f3bdeac4fc40e72176ed83a1271ecab10b95a`

```dockerfile
```

-	Layers:
	-	`sha256:978290a02dcd76cbcb5fc6ccd605a974cfe2f01cb468f01f72ae601408171b2d`  
		Last Modified: Tue, 24 Nov 2026 00:34:46 GMT  
		Size: 3.8 MB (3776961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0b8909ed7c05ff9c3020715aa5757b291aadb50dd755c25aff0ff08ad3e60b1`  
		Last Modified: Tue, 24 Nov 2026 00:34:46 GMT  
		Size: 19.0 KB (18995 bytes)  
		MIME: application/vnd.in-toto+json
