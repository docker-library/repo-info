## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:16a0ecf3f7401abad511045f1082d486993c6f6538303709979ae2b899f30f55
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:17dceee760c5b06368d7b64de06a722de8b977bc6abe59a6677ab73d8bc36a5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218735842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72f6b559d476aecd55283e005d971d994c8daddf6b996c165737a5d444d1e10b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:46:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:46:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:46:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:46:13 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:46:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:46:13 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:47:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:47:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:47:30 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:47:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:47:32 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ec2792dbc95d585ea6e38315e6524ec968589e71cd25e2820b9d7c8590a4f71`  
		Last Modified: Thu, 12 Nov 2026 00:47:53 GMT  
		Size: 145.9 MB (145923091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04b603f7f3c92e9c6167674b88a06070760cfaa9382e0faf7b861657849041cc`  
		Last Modified: Thu, 12 Nov 2026 00:47:50 GMT  
		Size: 18.9 MB (18885006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09efeecde52e73ef1f5804d52a064a9dbd8585080325862e5190cd1bd7e2dc44`  
		Last Modified: Thu, 12 Nov 2026 00:47:50 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4bf9da6961031dd06816af1b06f754d9a143fa28d570f6f6e4b3295dfb1d1fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3861714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72268df414a59272c70d29df02f098c63f77e360fb5cd80ac82ebc571356f98e`

```dockerfile
```

-	Layers:
	-	`sha256:b6c3dd5bbe1eff963e6061667fa41dcbf942bc42a4c89d79ef0e1cba1b8c176a`  
		Last Modified: Thu, 12 Nov 2026 00:47:49 GMT  
		Size: 3.8 MB (3845980 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5983a0ad57ab22dd774c9578b4ce4e4e08955052aaf640d856928d9195d45509`  
		Last Modified: Thu, 12 Nov 2026 00:47:49 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e32d5db28d2a3a69bf60f943694e15c5acd9c9cd684a830ae818ad4993178faa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215757687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1147537db9014e096ccb8432260fb8c8d95d65a1268db620a32fb488d89681d0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:01:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:01:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:01:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:01:33 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:01:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:01:33 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:02:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:02:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:02:55 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:02:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:02:57 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3156e0f41ca685f22d4f07a73a3e377ff98b8f408e3c7c54bcb9e4f5b07e89bc`  
		Last Modified: Thu, 12 Nov 2026 01:03:18 GMT  
		Size: 142.6 MB (142621050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8ea79c55b3cf092de8781f71f35ede50d22e66148c7a5d797c87ecd4f4a663`  
		Last Modified: Thu, 12 Nov 2026 01:03:15 GMT  
		Size: 18.8 MB (18842805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ca37097217176d6f6b1f167194d86c890c79398dd2d9151cb941edc0d5d7e1`  
		Last Modified: Thu, 12 Nov 2026 01:03:15 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b6e95d0b48fa0b431d1f15ef08e2872dbd8879dc07fc9312b911906d8445a878
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3143018129e6f9eca5491fde524e1ef27232e90dc7085dd01085615f67e9e165`

```dockerfile
```

-	Layers:
	-	`sha256:7b25ae440250d2d7e49f1d4c52f8c79394678503db666a15973a3f0cbbf3f360`  
		Last Modified: Thu, 12 Nov 2026 01:03:15 GMT  
		Size: 3.8 MB (3846838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6378821a96bbfc3153a7e15d9403466d105fca022bc0f3ae294101160f0f52`  
		Last Modified: Thu, 12 Nov 2026 01:03:14 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:e703de5aa8aa10a185ba5cef168179d29340ac550f1c591cb7c331425232c4ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208953688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69bc47e00b221d0868dc70df8a0a57493cc5cc4d14b3abba9566e8eed8faafcb`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 07:49:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 07:49:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 07:49:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 07:49:59 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 07:49:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 07:49:59 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 07:54:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 07:54:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 07:54:12 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 07:54:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 07:54:18 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2433a0ff0223d77927de812f1db2ed5c66a0946948c65bcf9ed21abbe7827254`  
		Last Modified: Thu, 12 Nov 2026 07:55:07 GMT  
		Size: 132.3 MB (132272152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0975b82a1f0227880855002164f710ea73f1e76717db25f97541f767d322af0c`  
		Last Modified: Thu, 12 Nov 2026 07:55:04 GMT  
		Size: 18.9 MB (18940691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288c48df9543d9a8db49375e0d954a90526f27f8347d4b26f7e81918b37953bd`  
		Last Modified: Thu, 12 Nov 2026 07:55:03 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:99a5f023ef65c8e7e2ea8c58d035eb01dfddda0900d1985a9a2f988bf8a5d89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3860895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a931b00c322ded073cecb1695653a70d3cec88a92e13da10e66a8424c47514`

```dockerfile
```

-	Layers:
	-	`sha256:36d8b263876429c536aab562d52ad6155d0079dc752b01b19c6d6151b124419b`  
		Last Modified: Thu, 12 Nov 2026 07:55:03 GMT  
		Size: 3.8 MB (3845117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21283381a4dcdba29cdf119df8ebfccdf4e231ae3f631b117767fa68206d7a26`  
		Last Modified: Thu, 12 Nov 2026 07:55:03 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
