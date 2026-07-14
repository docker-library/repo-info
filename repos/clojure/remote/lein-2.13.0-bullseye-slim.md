## `clojure:lein-2.13.0-bullseye-slim`

```console
$ docker pull clojure@sha256:8a13a3bf4346165c53e5cf4e5ad2dbd6f31e0a0dad29fec6dd163aa39ece7dd5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:lein-2.13.0-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:381f5f75eb72539dd14817eafa96b14b1ef951faee06d852a5b27bc4cb458928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142994375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d50cf8d59a2d58e5d3451fe480a0e5a29ea2be49215a2e8626b566b4872ec2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:21:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:21:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:21:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:21:46 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:21:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:21:46 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:22:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:22:50 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:22:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:22:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:22:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:22:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8929d5411dff5d30a6a1edce28236b61f57f782f913469fbaa580134cbc93c`  
		Last Modified: Tue, 14 Jul 2026 02:23:10 GMT  
		Size: 92.6 MB (92574608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc787bdf4a83a673eadc1c55e4319319a59822f51e4d7a37b85755010e67aec4`  
		Last Modified: Tue, 14 Jul 2026 02:23:08 GMT  
		Size: 15.6 MB (15644409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2120c360bdaa62042da7680a0a99c8ccc26e0a9f43b3b90520e65eff72a203e5`  
		Last Modified: Tue, 14 Jul 2026 02:23:08 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4147ab82b70f945b989a584f28458625b38a99961d4081b3e7d4ec2ca5ec87a9`  
		Last Modified: Tue, 14 Jul 2026 02:23:08 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3bdde580b3e170922c8ceef00df1e8e06a10627959b128d366c841b74595ac42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3023596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b94f370497cb35730df739fae171201f2550efc0eb220283337bbab68d77c77`

```dockerfile
```

-	Layers:
	-	`sha256:d2210a6acb30f0394dcdf21196375bf5634fb73f8c325128c051391a91fb633a`  
		Last Modified: Tue, 14 Jul 2026 02:23:08 GMT  
		Size: 3.0 MB (3005168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0932036cc31d75873e31853cd5a040d8423aca45952be87079065022d29155a4`  
		Last Modified: Tue, 14 Jul 2026 02:23:08 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:84284cc14926cc3f7ad563032df50e5a836cfcbe9c47093080d105f445c7e090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.4 MB (140438516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db1d7e0ec0648819a9e384167f13d5f378464dd78fc15748eab19b92e36e2b21`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:29:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:29:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:29:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:29:00 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:29:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:29:00 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:30:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:30:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:30:10 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:30:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:30:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:30:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:30:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd62d741b3ad69796d25a89cda01124478a42a5e3de7d1b25de08b3715cd8e7`  
		Last Modified: Tue, 14 Jul 2026 02:30:28 GMT  
		Size: 91.5 MB (91542253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3551818fc907dd78b20520697a59eb8dc751c46ea547ff4d382eb96ca112bd63`  
		Last Modified: Tue, 14 Jul 2026 02:30:29 GMT  
		Size: 15.6 MB (15631674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3252e2c04fd841e9e53fc168c8c8f3a3d322443d26e22c18ff0e8c8e92c5db9`  
		Last Modified: Tue, 14 Jul 2026 02:30:29 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6109b8d1e60976837a57b119403d2c69f3c02e79a4ae339fe19ad0b71950069`  
		Last Modified: Tue, 14 Jul 2026 02:30:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6de3e964fc4bfbe9c72a0db7c91ca53142a92609067e16c17f3bad3459cb67d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (3023371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:443179d9c9b6085529f8adf47a5ea319b49f368ec7ab829a208a63dcf39b5fb3`

```dockerfile
```

-	Layers:
	-	`sha256:b47e164185103d086237a931b3f6be8f503e9aa80ea4aa51a88f910a598c0dea`  
		Last Modified: Tue, 14 Jul 2026 02:30:29 GMT  
		Size: 3.0 MB (3004798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e12406e3fe5b45af18d753bc4e8b1148697e9b94c93f788e7c9df363e6c0a4f`  
		Last Modified: Tue, 14 Jul 2026 02:30:28 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json
