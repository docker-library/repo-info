## `sapmachine:17-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:c3e8f322f64da6aa0d2e04381375c10a806d68356847069b0f2b99a1d5a79bb7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:6968039e10c1d9717fbd89e47d1dabf5cf3ee59f7ba6dbfbc481d92f68b68410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234590607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:893f01da16ea284060c51878a09fb49cb0f21623beaa0e682ca2ab4a5de3f5ee`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:40:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.21.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:40:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Mon, 26 Oct 2026 23:40:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc65124cebf8503b9ce78b5e88de2a078a0286254d85ee05901ce3dc9828701`  
		Last Modified: Mon, 26 Oct 2026 23:41:18 GMT  
		Size: 204.8 MB (204838119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9344ffe61b04bf4e7384951d38eb599c0c4898be146f012dd608a674de581c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d1e5e5eff0ebfa20e651abc44d6c35ba56024d933336a6ecda692fa81d1864`

```dockerfile
```

-	Layers:
	-	`sha256:a965a18b7c3b2c8ca289b3cdef404bfec364366d2275977923ff336305b4c714`  
		Last Modified: Mon, 26 Oct 2026 23:41:14 GMT  
		Size: 2.6 MB (2631957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50369e423b9ce94e58008761231fe668393b8a9d58ba86045efc267e0e8693ed`  
		Last Modified: Mon, 26 Oct 2026 23:41:13 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
