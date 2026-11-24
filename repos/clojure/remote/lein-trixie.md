## `clojure:lein-trixie`

```console
$ docker pull clojure@sha256:fb2761ce19aee81a5c0159a2285421de52777085ab6fb33a9d252d1022bfb593
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
$ docker pull clojure@sha256:f8d3bca52df32037361aafc54de4af566e69b4ba2d6ca951b719fb7eb33fac9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166816994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f8597698388680ec878b4599d3a6b9f9b0582300f881c8ecfc57f55f405d38`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:57:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:57:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:57:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:57:21 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:57:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:57:21 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 13:01:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 13:01:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 13:01:35 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 13:01:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 13:01:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 13:01:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 13:01:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a98da685fae8d467fda6888b086c6968c2373e3a2988d4a7b74f2380290950f`  
		Last Modified: Tue, 24 Nov 2026 13:02:35 GMT  
		Size: 90.1 MB (90119602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4e0474dfe9c2b13ccfa50940a9db64efcd3af40259cb48335c4f6e5008eecac`  
		Last Modified: Tue, 24 Nov 2026 13:02:33 GMT  
		Size: 19.0 MB (18951392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8078435e536f70112d44bea5635e12f9b58277f9482eba59e6288ea573c319e`  
		Last Modified: Tue, 24 Nov 2026 13:02:33 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d027e0644cdec24082894e638a9364c3c450d80e2927873708faa97e86f4d89d`  
		Last Modified: Tue, 24 Nov 2026 13:02:32 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ebf4cbc24abacb5564c2e310387d9dbaee352942f494592761d2b26a1693722a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da9759ffa01e6af88edb4ced330eec0a6c5695881d62d08bd5544aa13e45afa`

```dockerfile
```

-	Layers:
	-	`sha256:e2afebd83d6deec20b2922b82552925641324b8bbbe3bbba68cfe5910fb66b3f`  
		Last Modified: Tue, 24 Nov 2026 13:02:32 GMT  
		Size: 3.8 MB (3776187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:326186e776d60dc836dce2a7bc6783fd62b63bc9538d35ae51dfd79cfd6f5841`  
		Last Modified: Tue, 24 Nov 2026 13:02:32 GMT  
		Size: 19.0 KB (18996 bytes)  
		MIME: application/vnd.in-toto+json
